# Generated by Django 3.2.18 on 2024-04-11 05:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0032_selecteddates_verification_period'),
    ]

    operations = [
        migrations.DeleteModel(
            name='CheckInOut',
        ),
    ]