# Generated by Django 5.0.2 on 2024-04-13 03:47

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0036_contact'),
    ]

    operations = [
        migrations.AddField(
            model_name='contact',
            name='time',
            field=models.TimeField(default=datetime.time(0, 0)),
        ),
    ]
