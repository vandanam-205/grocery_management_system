# Generated by Django 5.1.2 on 2024-12-29 17:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('groceryapp', '0008_cashondelivery_username_upi_address_upi_phoneno_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='card',
            name='Name',
        ),
        migrations.RemoveField(
            model_name='cashondelivery',
            name='user',
        ),
        migrations.RemoveField(
            model_name='upi',
            name='Name',
        ),
        migrations.RemoveField(
            model_name='upi',
            name='username',
        ),
    ]
