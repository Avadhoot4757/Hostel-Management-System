# Generated by Django 3.2.18 on 2024-04-04 06:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0025_finalyear_firstyear_secondyear_thirdyear'),
    ]

    operations = [
        migrations.AlterField(
            model_name='secondyear',
            name='rank',
            field=models.FloatField(),
        ),
    ]
