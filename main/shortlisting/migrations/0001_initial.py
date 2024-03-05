# Generated by Django 3.2.9 on 2024-03-05 04:12

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Application',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('application_no', models.CharField(max_length=10, unique=True)),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
    ]