# Generated by Django 3.2.18 on 2024-04-05 10:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('studentrole', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='maintenancerequest',
            name='user',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='maintenancerequest',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='studentrole/static/images/maintenance_request'),
        ),
    ]
