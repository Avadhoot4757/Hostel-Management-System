# Generated by Django 3.2.18 on 2024-04-10 09:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('guest', '0004_alter_booking_id_proof'),
    ]

    operations = [
        migrations.AlterField(
            model_name='booking',
            name='id_proof',
            field=models.FileField(blank=True, null=True, upload_to=''),
        ),
    ]
