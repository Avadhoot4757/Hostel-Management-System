# Generated by Django 5.0.3 on 2024-03-15 13:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0019_rename_reson_checkinout_reason'),
    ]

    operations = [
        migrations.AlterField(
            model_name='checkinout',
            name='check_out_time',
            field=models.DateTimeField(null=True),
        ),
    ]
