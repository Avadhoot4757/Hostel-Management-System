# Generated by Django 5.0.2 on 2024-03-12 13:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0016_merge_20240312_1911'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='civilengineering',
            name='verification_status',
        ),
        migrations.RemoveField(
            model_name='computerengineering',
            name='verification_status',
        ),
        migrations.RemoveField(
            model_name='electricalengineering',
            name='verification_status',
        ),
        migrations.RemoveField(
            model_name='instrumentationengineering',
            name='verification_status',
        ),
        migrations.RemoveField(
            model_name='manfacturingengineering',
            name='verification_status',
        ),
        migrations.RemoveField(
            model_name='mechanicalengineering',
            name='verification_status',
        ),
    ]