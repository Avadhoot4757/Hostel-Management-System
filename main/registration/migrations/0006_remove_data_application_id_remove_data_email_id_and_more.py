# Generated by Django 5.0.2 on 2024-03-01 18:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0005_data_delete_studentsdata'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='data',
            name='application_id',
        ),
        migrations.RemoveField(
            model_name='data',
            name='email_id',
        ),
        migrations.RemoveField(
            model_name='data',
            name='percentile',
        ),
        migrations.RemoveField(
            model_name='data',
            name='rank',
        ),
    ]