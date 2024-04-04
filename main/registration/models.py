from django.db import models
from django.contrib.auth.models import User

class FirstYear(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    rank = models.IntegerField()
    application_id = models.CharField(max_length=10)
    email = models.EmailField()
    name = models.CharField(max_length=100)
    verified = models.BooleanField(default=False)
    selected = models.BooleanField(default=False)
    branch = models.CharField(max_length=100)

class SecondYear(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    rank = models.FloatField()
    application_id = models.CharField(max_length=10)
    email = models.EmailField()
    name = models.CharField(max_length=100)
    verified = models.BooleanField(default=False)
    selected = models.BooleanField(default=False)
    branch = models.CharField(max_length=100)

class ThirdYear(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    rank = models.FloatField()
    application_id = models.CharField(max_length=10)
    email = models.EmailField()
    name = models.CharField(max_length=100)
    verified = models.BooleanField(default=False)
    selected = models.BooleanField(default=False)
    branch = models.CharField(max_length=100)

class FinalYear(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    rank = models.FloatField()
    application_id = models.CharField(max_length=10)
    email = models.EmailField()
    name = models.CharField(max_length=100)
    verified = models.BooleanField(default=False)
    selected = models.BooleanField(default=False)
    branch = models.CharField(max_length=100)

# class HostelStudents(models.Model):
    
class CheckInOut(models.Model):
    student_name = models.CharField(max_length=100)
    mis= models.IntegerField ()
    year = models.CharField(max_length=100)
    reason = models.CharField(max_length=100)
    check_in_time = models.DateTimeField('timezone.now')
    check_out_time = models.DateTimeField('timezone.now')

    
