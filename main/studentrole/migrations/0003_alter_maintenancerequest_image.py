# Generated by Django 3.2.18 on 2024-04-10 16:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('studentrole', '0002_auto_20240405_1027'),
    ]

    operations = [
        migrations.AlterField(
            model_name='maintenancerequest',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]
