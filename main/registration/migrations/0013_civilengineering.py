# Generated by Django 5.0.2 on 2024-03-04 16:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0012_delete_civilengineering'),
    ]

    operations = [
        migrations.CreateModel(
            name='CivilEngineering',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('rank', models.IntegerField()),
                ('application_id', models.CharField(max_length=10)),
                ('email', models.EmailField(max_length=254)),
                ('name', models.CharField(max_length=100)),
                ('gender', models.CharField(max_length=10)),
                ('percentile', models.FloatField()),
            ],
        ),
    ]
