from django.shortcuts import render
from django.shortcuts import HttpResponse
from django.shortcuts import render,redirect,get_object_or_404
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.contrib.auth.models import User,auth
from django.contrib import messages
from .models import *
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from datetime import datetime, time
from django import forms
from django.contrib.auth.decorators import user_passes_test
import calendar
from django.contrib.auth.models import Group
from django.shortcuts import render, redirect
# def index(request):
#     features = student.objects.all()
#     return render(request,'index.html')

# def register(request):
#     if request.method == 'POST':
#         username = request.POST['username']
#         email = request.POST['email']
#         password = request.POST['password']
#         password2 = request.POST['password2']
#         if password == password2:
#             if User.objects.filter(username = username).exists():
#                 messages.info(request,'Username already exists..')
#                 return redirect('register')
#             else:
#                 user = User.objects.create_user(username = username,password = password,email=email)
#                 user.save();
#                 return redirect('/details')
#         else:
#             messages.info(request,'Invalid password!')
#             return redirect('register')
#     else:
#         return render(request,'register.html')
    
# def login(request):
#     if request.method == 'POST':
#         username = request.POST['username']
#         password = request.POST['password']
#         email = request.POST['email']
#         if(username == 'coepMess@2024' or username == 'Laundry@2024' or username == 'Rector@2024'):
#             messages.info(request,'Invalid Credentials!')
#             return redirect('login') 
#         else:
#             user = auth.authenticate(username = username,password = password,email=email)

#         if user is not None:
#             auth.login(request,user)
#             return redirect('/')
#         else :
#             messages.info(request,'Invalid Credentials!')
#             return redirect('login')
#     else :
#         return render(request,'login.html')

# def logout(request):
#     auth.logout(request)
#     return redirect('/')

def can_take_leave_morning():
    now = timezone.now()
    time1 = timezone.make_aware(datetime.combine(now.date(), time(7, 0, 0)), timezone.get_current_timezone())
    time2 = timezone.make_aware(datetime.combine(now.date(), time(10, 0, 0)), timezone.get_current_timezone()) 
    return now >= time1 and now <= time2 

def can_take_leave_night():
    now = timezone.now()
    time5 = timezone.make_aware(datetime.combine(now.date(), time(0, 0, 0)), timezone.get_current_timezone())
    time6 = timezone.make_aware(datetime.combine(now.date(), time(13, 0, 0)), timezone.get_current_timezone())  # Assuming leave ends at 6:00 PM
    return now >= time5 and now <= time6 

def can_cancel_leave_morning():
    now = timezone.now()
    time1 = timezone.make_aware(datetime.combine(now.date(), time(0, 0, 0)), timezone.get_current_timezone())
    time2 = timezone.make_aware(datetime.combine(now.date(), time(13, 0, 0)), timezone.get_current_timezone()) 
    return now >= time1 and now <= time2 

def can_cancel_leave_night():
    now = timezone.now()
    time1 = timezone.make_aware(datetime.combine(now.date(), time(0, 0, 0)), timezone.get_current_timezone())
    time2 = timezone.make_aware(datetime.combine(now.date(), time(21, 0, 0)), timezone.get_current_timezone()) 
    return now >= time1 and now <= time2 

def convert_to_date(date_string):
    try:
        date_format = "%Y-%m-%d"

        date_object = datetime.strptime(date_string, date_format)

        return date_object.date() 
    except ValueError:
        return None
 
def meal_status(request):
    if not request.user.is_authenticated:
        messages.info(request,"Please Login To Get service!")
        return redirect('meal')
    else:
        if request.method == 'POST':
            user_id = request.user
            date1 = request.POST['hiddenInput1']
            date2 =  convert_to_date(date1)
            try:
                Attendance = attendance.objects.get(user_id=user_id,date=date2)
                is_attending_morning = Attendance.is_attending_morning
                is_attending_night = Attendance.is_attending_night
            except attendance.DoesNotExist:
                messages.info(request, "There might be some issue!.")
            return redirect('meal')
        else:
            return JsonResponse({'error': 'Invalid request method'})

def meal(request):
    meals = Meal.objects.all()
    if request.user.is_authenticated:
        user = request.user
        month = timezone.now().strftime("%Y-%m")
        month_value = month.split('-')[1]
        # Get the 'mess' group object
        mess_group = Group.objects.get(name='mess')
        # Get all users belonging to the 'mess' group
        mess_users = mess_group.user_set.all()
        # Extract usernames from the mess_users queryset
        adminList = [user.username for user in mess_users]
        attendance_count1 = 0
        attendance_count2 = 0
        try:
            Attendance1 = attendance.objects.filter(user=user)
            for attende in Attendance1:
                if(attende.date_of_leave[5:7] == month_value and attende.is_attending_morning==0):
                    attendance_count1 = attendance_count1 + 1
                if(attende.date_of_leave[5:7] == month_value and attende.is_attending_night==0):
                    attendance_count2 = attendance_count2 + 1
        except attendance.DoesNotExist:
                attendance_count1 = 0
        

        current_year = timezone.now().year
        current_month = timezone.now().month
        today = timezone.now()
        monthLeaves = []
        monthLeavesTillDate = []
        totalpenalty = 0
        bill_till_date = 0
        no_of_leaves = 0
        no_of_leaves_till_date = 0
        day_number = today.day
        is_attending_morning = '✅'
        is_attending_night = '✅'
        # Get the number of days in the current month
        num_days_in_month = calendar.monthrange(current_year, current_month)[1]
        penaltyno = 0
        try:
            Attendance = attendance.objects.get(user=user,date_of_leave=str(timezone.now().date()))
            if(Attendance.is_attending_morning):
                is_attending_morning = '✅'
            else:
                is_attending_morning = '❌'  
            if(Attendance.is_attending_night):
                is_attending_night = '✅'
            else:
                is_attending_night = '❌'
        except attendance.DoesNotExist:
            is_attending_morning = '✅'
            is_attending_night = '✅'

        try:
            leaves = attendance.objects.filter(user = user)
            for leave in leaves:
                leave_date = datetime.strptime(leave.date_of_leave, '%Y-%m-%d')
                if leave.date_of_leave[5:7]==month_value:
                    monthLeaves.append(leave)
                    if leave.is_penalty == 1:
                        totalpenalty += 20
                        penaltyno = penaltyno + 1
                    if leave_date.day < day_number:
                        monthLeavesTillDate.append(leave)
            no_of_leaves = len(monthLeaves)
            no_of_leaves_till_date = len(monthLeavesTillDate)
            bill_till_date = (day_number - 1)*2*40 + totalpenalty - (no_of_leaves_till_date)*40 + penaltyno*40
        except attendance.DoesNotExist:
            no_of_leaves = 0
        return render(request, 'meal.html', {'meals': meals,'attendance_count1':attendance_count1,'attendance_count2':attendance_count2,'is_attending_morning':is_attending_morning,'is_attending_night':is_attending_night,'monthLeaves':monthLeaves,'totalpenalty':totalpenalty,'bill_till_date':bill_till_date,'adminList':adminList})
    else:
        return render(request, 'meal.html', {'meals': meals})


def meal_history(request):
    return render(request,'meal_history.html')

def historyCheck(request):
    if request.user.is_authenticated and request.method == 'POST':
        user = request.user
        username = user.username
        month = request.POST.get('month')
        month1 = month
        month2 = month
        new_month = int(month[5:7])
        month_value = month2.split('-')[1]
        year, input_month = map(int, month1.split('-'))
        month_name = calendar.month_name[input_month]
        # Get the number of days in the entered month
        num_days_in_month = calendar.monthrange(year, input_month)[1]
        today = timezone.now()
        day_number = today.day
        curr_year = str(today.year)
        monthLeaves = []
        monthLeavesTilldate = []
        totalpenalty = 0
        bill_till_date = 0
        is_passed_month = 0
        is_future = 0
        no_of_leaves = 0 
        monthLeavesTilldate1 = 0 
        penaltyno = 0
        # Get the 'mess' group object
        mess_group = Group.objects.get(name='mess')
        # Get all users belonging to the 'mess' group
        mess_users = mess_group.user_set.all()
        # Extract usernames from the mess_users queryset
        adminList = [user.username for user in mess_users]
        try:
            leaves = attendance.objects.filter(user = user)
            
            for leave in leaves:
                leave_date = datetime.strptime(leave.date_of_leave, '%Y-%m-%d')
                if leave.date_of_leave[5:7]==month_value:
                    monthLeaves.append(leave)
                    if leave.is_penalty == 1:
                        totalpenalty += 20
                        penaltyno = penaltyno + 1
                    if leave_date.day < day_number:
                        monthLeavesTilldate.append(leave)
            
            no_of_leaves = len(monthLeaves)
            monthLeavesTilldate1 = len(monthLeavesTilldate)
            if(input_month > timezone.now().month):
                is_future = 1
            if(num_days_in_month==30):
                bill_till_date = 30*2*40 + totalpenalty - no_of_leaves*40 + penaltyno*40
            elif(num_days_in_month==31):
                bill_till_date = 31*2*40 + totalpenalty - no_of_leaves*40+ penaltyno*40
            else:
                bill_till_date = 28*2*40 + totalpenalty - no_of_leaves*40+ penaltyno*40
            # if input_month < timezone.now().month:
            #     is_passed_month = 1
            if input_month == timezone.now().month:
                bill_till_date = (day_number - 1)*2*40 + totalpenalty - (monthLeavesTilldate1)*40+ penaltyno*40
            elif input_month < timezone.now().month:
                is_passed_month = 1
            try:
                messBills = MessBills.objects.get(user = user,month = new_month)
                messBills.bill_amount = bill_till_date
                messBills.month_name = month_name
                messBills.save()
            except MessBills.DoesNotExist:
                if not is_future:
                    MessBills.objects.create(user = user,name = username,month = new_month,bill_amount = bill_till_date,month_name = month_name)
            return render(request,'meal_history.html',{'monthLeaves':monthLeaves,'month_name':month_name,'curr_year':curr_year,'totalpenalty':totalpenalty,'bill_till_date':bill_till_date,'is_passed_month':is_passed_month,'is_future':is_future,'adminList':adminList}) 
        except attendance.DoesNotExist:
            return render(request,'meal_history.html')
    else:
        return render(request,'meal_history.html')
    

def createdBills(request):
    if not request.user.is_authenticated:
        messages.info(request, "Please login with a admin account to access this service.")
        return render(request, 'createBills.html')
    elif request.method == 'POST':
        month = request.POST.get('month')
        month1 = month
        month2 = month
        new_month = int(month[5:7])
        month_value = month2.split('-')[1]
        year, input_month = map(int, month1.split('-'))
        month_name = calendar.month_name[input_month]
        # Get the number of days in the entered month
        num_days_in_month = calendar.monthrange(year, input_month)[1]
        today = timezone.now()
        day_number = today.day
        monthLeavesTilldate = []
        totalpenalty = 0
        bill_till_date = 0
        is_passed_month = 0
        is_future = 0
        monthLeaves = []
        monthLeavesTilldate1 = 0 
        penaltyno = 0
        # Get the 'mess' group object
        mess_group = Group.objects.get(name='mess')
        # Get all users belonging to the 'mess' group
        mess_users = mess_group.user_set.all()
        # Extract usernames from the mess_users queryset
        adminList = [user.username for user in mess_users]
        if(input_month > timezone.now().month):
            is_future = 1
        elif(input_month < timezone.now().month):
            is_passed_month= 1 

        monthLeaves = []
        monthLeavesUserTilldate = 0
        no_of_leaves_user = 0
        try:
            messBills = MessBills.objects.filter(month = input_month) 
            try:
                leaves = attendance.objects.filter(month = input_month)
                
                for leave in leaves:
                    leave_date = datetime.strptime(leave.date_of_leave, '%Y-%m-%d')
                    if leave.is_attending_morning == 0:
                        monthLeaves.append(leave)
                    if leave.is_attending_night == 0:
                        monthLeaves.append(leave)
                    
            except attendance.DoesNotExist:
                no_of_leaves_user = 0
            # return render(request,'createBills.html',{'messBills':messBills,'is_future':is_future,
            # # 'month_name':month_name})
            # return render(request,'createBills.html',{'messBills_Month':messBills,'is_future':is_future})
            for messBill in messBills:
                if(messBill.bill_amount==0):
                    for leave in monthLeaves:
                        leave_date = datetime.strptime(leave.date_of_leave, '%Y-%m-%d')
                        if(messBill.name == leave.name):
                            if leave.is_attending_morning == 0:
                                no_of_leaves_user += 1
                            if leave.is_attending_night == 0:
                                no_of_leaves_user += 1
                            if leave.is_penalty == 1:
                                totalpenalty += 20
                                penaltyno = penaltyno + 1
                            if leave_date.day < day_number and leave.is_attending_night == 0:
                                monthLeavesUserTilldate = monthLeavesUserTilldate + 1
                            if leave_date.day < day_number and leave.is_attending_morning == 0:
                                monthLeavesUserTilldate = monthLeavesUserTilldate + 1
                    
                    if input_month == timezone.now().month:
                        bill_till_date = (day_number - 1)*2*40 + totalpenalty - (monthLeavesUserTilldate)*40+ penaltyno*40
                    elif(num_days_in_month==30 and input_month < timezone.now().month):
                        bill_till_date = 30*2*40 + totalpenalty - no_of_leaves_user*40 + penaltyno*40
                    elif(num_days_in_month==31 and input_month < timezone.now().month):
                        bill_till_date = 31*2*40 + totalpenalty - no_of_leaves_user*40+ penaltyno*40
                    else:
                        bill_till_date = 28*2*40 + totalpenalty - no_of_leaves_user*40+ penaltyno*40
                    messBill.bill_amount = bill_till_date
                    messBill.month_name = month_name
                return render(request,'createBills.html',{'messBills_Month':messBills,'month_name':month_name,'adminList':adminList,'is_future':is_future})
            #
        except MessBills.DoesNotExist:
            if is_future:
                messages.info(request,'Future Month')
            
            messBill.bill_amount = bill_till_date
        return render(request,'createBills.html',{'messBills_Month':messBills,'month_name':month_name,'adminList':adminList,'is_future':is_future})
    else:
        messages.info(request,'Invalid Method')
        return render(request,'createBills.html')



def user_authenticated(user):
    return user.is_authenticated

def leave(request):
    now = timezone.now()
    time3 = timezone.make_aware(datetime.combine(now.date(), time(18, 30, 0)), timezone.get_current_timezone())
    time4 = timezone.make_aware(datetime.combine(now.date(), time(23, 30, 0)), timezone.get_current_timezone()) 
    time1 = timezone.make_aware(datetime.combine(now.date(), time(11, 30, 0)), timezone.get_current_timezone())
    time2 = timezone.make_aware(datetime.combine(now.date(), time(13, 50, 0)), timezone.get_current_timezone()) 
    # return now >= time1 and now <= time2 
    if not request.user.is_authenticated:
        messages.info(request,"Please Login To Get service!")
        return redirect('meal')
    if(request.user.username in ['coepMess@2024','laundry@2024','Rector@2024']):
        messages.info(request,"Please Login with a student account To Get service!")
        return redirect('meal')
    else:
        if request.method == 'POST':
            date1 = request.POST['hiddenInput']
            time_value = request.POST['time']
            name1 = request.user.username
            action = request.POST['action']
            date2 =  convert_to_date(date1)
            if(date2 and  date2.month > timezone.now().month):
                messages.info(request,'Leave Can Be taken of this Moth Only!')
                return redirect('meal')
            if date1 is None:
                return JsonResponse({'error': '{{date1}}'})
            if time_value is None:
                return JsonResponse({'error': '{{date1}}'})
            if( action == 'Take Leave'):
                if time_value == 'Morning' and date1>= str(timezone.now().date()):
                    user = request.user
                    if not can_take_leave_morning() and date1 == str(timezone.now().date()):
                        messages.error(request, "Leave can only be taken during 7 AM to 10 AM")
                        return redirect('meal')
                    try:
                        Attendance = attendance.objects.get(user=user,date_of_leave=date1,name=name1)
                        if Attendance.is_attending_morning == False:
                            messages.success(request, "You have already taken leave for The meal.")
                        else:
                            Attendance.is_attending_morning = False
                            Attendance.month = date2.month
                            Attendance.save()
                    except attendance.DoesNotExist:
                        attendance.objects.create(user=user,date=timezone.now().date(),date_of_leave=date1,is_attending_morning=False,name=name1,month = date2.month)
                        messages.success(request, "You have successfully taken leave for The meal.")
                    return redirect('meal')
                elif time_value == 'Night' and date1 >= str(timezone.now().date()):
                    user = request.user
                    if now >= time3 and date1 == str(timezone.now().date()):
                        messages.info(request, "Leave can only be taken during 4 PM to 6 PM")
                        return redirect('meal')
                    try:
                        Attendance = attendance.objects.get(user=user,date_of_leave=date1,name=name1)
                        if Attendance.is_attending_night == False:
                            messages.success(request, "You have already taken leave for The meal.")
                        else:
                            Attendance.is_attending_night = False
                            Attendance.month = date2.month
                            Attendance.save()
                            messages.success(request, "You have successfully taken leave for The meal.")
                    except attendance.DoesNotExist:
                        attendance.objects.create(user=user,date=timezone.now().date(),date_of_leave=date1,is_attending_night=False,name=name1,month = date2.month)
                        messages.success(request, "You have successfully taken leave for The Night meal.")
                    return redirect('meal')
                else:
                    messages.info(request, "Leave cannot be taken of Passed Days!.")
                    return redirect('meal')
            elif( action == 'Cancel Leave'):
                if time_value == 'Morning' and date1>= str(timezone.now().date()):
                    user = request.user
                    if now>=time2 and date1 == str(timezone.now().date()):
                        messages.error(request, "Leave can not Be cancelled Now!")
                        return redirect('meal')
                    elif(now>=time1 and now<=time2) and date1 == str(timezone.now().date()):
                        try:
                            Attendance = attendance.objects.get(user=user,date_of_leave=date1,name=name1)
                            if Attendance.is_attending_morning == True:
                                messages.success(request, "You have already Cancelled leave for The meal.")
                            else:
                                Attendance.is_attending_morning = True
                                Attendance.month = date2.month
                                Attendance.is_penalty = True
                                Attendance.save()
                                messages.success(request, "You have Taken a PENALTY and Cancelled leave for The meal.")
                        except attendance.DoesNotExist:
                            messages.info(request, "You have Not taken leave for The meal.")
                        return redirect('meal')
                    elif date1>= str(timezone.now().date()):
                        try:
                            Attendance = attendance.objects.get(user=user,date_of_leave=date1,name=name1)
                            if Attendance.is_attending_morning == True:
                                messages.success(request, "You have already Cancelled leave for The meal.")
                            else:
                                Attendance.is_attending_morning = True
                                Attendance.month = date2.month
                                Attendance.save()
                                messages.success(request, "You have successfully Cancelled leave for The meal.")
                        except attendance.DoesNotExist:
                            messages.info(request, "You have Not taken leave for The meal.")
                        return redirect('meal')
                if time_value == 'Night' and date1 >= str(timezone.now().date()):
                    user = request.user
                    if now>=time4 and date1 == str(timezone.now().date()):
                        messages.info(request, "Leave can not Be cancelled Now!")
                        return redirect('meal')
                    elif (now>=time3 and now<=time4) and date1 == str(timezone.now().date()):
                        try:
                            Attendance = attendance.objects.get(user=user,date_of_leave=date1,name=name1)
                            if Attendance.is_attending_night== True:
                                messages.success(request, "You have already Cancelled leave for The meal.")
                            else:
                                Attendance.is_attending_night = False
                                Attendance.month = date2.month
                                Attendance.is_penalty = True
                                Attendance.save()
                                messages.success(request, "You have Taken a PENALTY and Cancelled leave for The meal.")
                        except attendance.DoesNotExist:
                            messages.info(request, "You have Not taken leave for The meal.")
                        return redirect('meal')
                    elif date1>= str(timezone.now().date()):
                        try:
                            Attendance = attendance.objects.get(user=user,date_of_leave=date1,name=name1)
                            if Attendance.is_attending_night== True:
                                messages.success(request, "You have already Cancelled leave for The meal.")
                            else:
                                Attendance.is_attending_night = True
                                Attendance.month = date2.month
                                Attendance.save()
                                messages.success(request, "You have successfully Cancelled leave for The meal.")
                        except attendance.DoesNotExist:
                            messages.info(request, "You have Not taken leave for The meal.")
                        return redirect('meal')
                else:
                    messages.info(request, "Leave cannot be cancelled of Passed Days!.")
                    return redirect('meal')
        else:
            return JsonResponse({'error': 'Invalid request method'})

  
def coepMess(request):
    if((not request.user.is_authenticated)):
        return redirect('/')
    mess_group = Group.objects.get(name='mess')
    if mess_group not in request.user.groups.all():
        return redirect('/')
    today_date =timezone.now().date()
    day = today_date.strftime("%A")
    meals = Meal.objects.all()
    attendee = attendance.objects.all()
    unique_attendees = attendance.objects.all().values('user_id').distinct()
    unique_attendees = len(unique_attendees)
    morning_non_attendee = [at for at in attendee if at.is_attending_morning == False and at.date_of_leave==str(timezone.now().date())]
    morning_non_attendee1 = len(morning_non_attendee)
    night_non_attendee = [at for at in attendee if at.is_attending_night == False and at.date_of_leave==str(timezone.now().date())]
    night_non_attendee1 = len(night_non_attendee)
    absentee1 = unique_attendees - morning_non_attendee1 
    absentee2 = unique_attendees - night_non_attendee1
    return render(request, 'coepMess.html', {'meals': meals,'morning_non_attendee': morning_non_attendee1,'night_non_attendee':night_non_attendee1,'today_date':today_date,'day':day,'absentee1':absentee1,'absentee2':absentee2})
 

def change_meal(request):
    if request.method == 'POST':
        day = request.POST.get('Day')
        time = request.POST.get('time')
        meal_name = request.POST.get('meal_name')

        # Retrieve the Meal object for the specified day
        meal = get_object_or_404(Meal, day_of_week=day)

        # Update the meal details based on the time
        if time == 'Morning':
            meal.morning_meal_name = meal_name
        elif time == 'Night':
            meal.dinner_meal_name = meal_name

        # Save the changes to the database
        meal.save()

        # Redirect to a success page or another appropriate URL
        return redirect('coepMess')  # Replace 'success_page' with the name of your success page URL pattern

    # Handle cases where the request method is not POST
    return render(request, 'coepMess.html')


def studentBills(request):
    return render(request,'studentBills.html')


def checkBill(request):
    
    if not request.user.is_authenticated:
        messages.info(request, "Please login with a admin account to access this service.")
        return redirect('studentBills')
    
    elif request.method == 'POST':
        month = request.POST.get('month')
        current_month = timezone.now().strftime('%Y-%m')
        year, month_num = map(int, month.split('-'))

        # Convert month number to month name
        month_name = datetime.strptime(str(month_num), '%m').strftime('%B')

        # Construct the formatted month and year string
        formatted_month = f"{month_name} {year}"

        # Get the 'mess' group object
        mess_group = Group.objects.get(name='mess')
        # Get all users belonging to the 'mess' group
        mess_users = mess_group.user_set.all()
        # Extract usernames from the mess_users queryset
        adminList = [user.username for user in mess_users]
        month2 = str(month[5:7])
        is_future = 0

        if(current_month < month):
            is_future = 1
        try:
            messBills = MessBills.objects.filter(month = month2)
            return render(request,'studentBills.html',{'messBills':messBills,'is_future':is_future,'month_name':formatted_month,'adminList':adminList})
        except MessBills.DoesNotExist:
            messages.info(request,'No data Found')
    else:
        return render(request,'studentBills.html',{'is_future':is_future,'adminList':adminList})
    

def createBills(request):
    return render(request,'createBills.html')

   



# Mess Code ends




# def Rector(request):
#     return render(request,'Rector.html')

# def getdetails(request):
#     Yearofstudy1 = request.POST.get('Yearofstudy')
#     misno = request.POST.get('misno')
#     try:
#         studentInfo = student.objects.get(Yearofstudy = Yearofstudy1,misno = misno)
#         return render(request,'Rector.html',{'studentInfo':studentInfo})
#     except student.DoesNotExist:
#         messages.error(request,'Student Doesnt Exists Please make a valid Entry.')

#     return render(request,'Rector.html')

# def details(request):
#         return render(request,'details.html')

# def details_reg(request):
#     if not request.user.is_authenticated:
#         messages.info(request, 'Please Login to register Your Deatails!')
#         return redirect('login')
#     elif request.method == 'POST':
#         full_name = request.POST.get('fullname')
#         student1 = request.user  # Assuming you have user authentication 
#         Misno = request.POST.get('Misno')
#         college_email = request.POST.get('mail')
#         roomno = request.POST.get('roomno')
#         Adress = request.POST.get('Adress')
#         YearOfstudy = request.POST.get('Yearofstudy')
#         is_applied1 = request.POST.get('app_mess')
#         mess_token = request.POST.get('mess_app1')
#         contactno1 = request.POST.get('contactno')
#         user1 = request.user
#         if is_applied1 == 'Yes':
#             is_app = True
#         else:
#             is_app = False
#         try:
#             student2 = student.objects.get(user =user1)
#             messages.info(request, 'You have already filled your details!')
#             return redirect('details')
#         except student.DoesNotExist:
#             student.objects.create(user=student1, name=full_name, room=roomno, misno=Misno, collegemailid=college_email, address=Adress, Yearofstudy=YearOfstudy, is_applied=is_app, mess_token=mess_token, contactno=contactno1)
#             messages.info(request, "You have filled your details successfully!")
#             return redirect('details')
#     else:
#         return JsonResponse({'error': 'Invalid request method'}, status=400)




# def book_laundry(request):
#     user = request.user
#     if not request.user.is_authenticated:
#         messages.info(request,'Please Login To get The service!')
#         return render(request, 'book_laundry.html')
#     elif request.method == 'POST':
#         user = request.user
#         full_name = request.POST.get('full_name')
#         room_number = request.POST.get('room_number')
#         phone_number = request.POST.get('phone_number')
#         kgs_count = int(request.POST.get('kgs_count'))
#         service_type = request.POST.get('service_type')
#         time_slot = request.POST.get('time_slot')

#         if service_type == 'Dry Cleaning':
#             total_amount = kgs_count * 10
#         elif service_type == 'Washing':
#             total_amount = kgs_count * 15
#         elif service_type == 'Bleaching':
#             total_amount = kgs_count * 20
#         else:
#             total_amount = 0  

#         laundry_booking = LaundryBooking.objects.create(
#             user=user,
#             full_name=full_name,
#             room_number=room_number,
#             phone_number=phone_number,
#             kgs_count=kgs_count,
#             service_type=service_type,
#             time_slot=time_slot,
#             total_amount=total_amount  
#         )

#         return redirect('booking_success', booking_id=laundry_booking.id)

#     return render(request, 'book_laundry.html')


# def booking_success(request, booking_id):
#     booking = get_object_or_404(LaundryBooking, id=booking_id)
    
#     return render(request, 'booking_success.html', {'laundry_booking': booking})

# def is_superuser(user):
#     return user.is_superuser

# # @user_passes_test(is_superuser)
# def admin_view(request):
#     non_completed_bookings = LaundryBooking.objects.filter(is_completed=False)
#     return render(request, 'admin_view.html', {'non_completed_bookings': non_completed_bookings})

# # @user_passes_test(is_superuser)
# def mark_as_completed(request, booking_id):
#     booking = get_object_or_404(LaundryBooking, id=booking_id)
#     booking.is_completed = True
#     booking.save()
#     return redirect('admin_view')

# # @user_passes_test(is_superuser)
# def completed_laundry(request):
#     completed_bookings = LaundryBooking.objects.filter(is_completed=True)
#     return render(request, 'completed_laundry.html', {'completed_bookings': completed_bookings})



# def create_notice(request):
#     if request.method == 'POST':
#         title = request.POST.get('title')
#         content = request.POST.get('content')
#         notice = Notice.objects.create(title=title, content=content)
#         return redirect('notices')  
#     return render(request, 'create_notice.html')

# def notices(request):
#     notices = Notice.objects.all()
#     return render(request, 'notices.html', {'notices': notices})


# def booking_status(request):
#     user_bookings = LaundryBooking.objects.filter(user=request.user)
#     return render(request, 'booking_status.html', {'user_bookings': user_bookings})


from django.shortcuts import render, redirect
from django.contrib import messages
from .models import ClinicSlot, SlotBooking
from django.db.models import Q

def book_slot(request):
    name = request.user.username
    if request.method == 'POST':
        booking_date = request.POST.get('booking_date')
        if 'selected_slot' in request.POST:
            selected_slot_id = request.POST.get('selected_slot')
            selected_slot = ClinicSlot.objects.get(id=selected_slot_id)
            if not SlotBooking.objects.filter(slot=selected_slot, date=booking_date).exists():
                booking = SlotBooking.objects.create(slot=selected_slot, date=booking_date, name=name)
                messages.success(request, 'Slot booked successfully!')
                return redirect('book_slot')
            else:
                messages.error(request, 'Sorry, this slot is already booked for the selected date.')
        else:
            available_slots = ClinicSlot.objects.exclude(bookings__date=booking_date)
            booked_slots = SlotBooking.objects.filter(name=name)
            context = {
                'available_slots': available_slots,
                'selected_date': booking_date,
                'booked_slots': booked_slots,
            }
            return render(request, 'clinic_booking.html', context)
    else:
        booked_slots = SlotBooking.objects.filter(name=name)
        context = {
            'booked_slots': booked_slots,
        }
        return render(request, 'clinic_booking.html', context)