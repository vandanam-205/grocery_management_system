# Generated by Django 5.1.2 on 2024-12-29 16:55

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('groceryapp', '0007_cashondelivery'),
    ]

    operations = [
        migrations.AddField(
            model_name='cashondelivery',
            name='username',
            field=models.CharField(default=False, max_length=50),
        ),
        migrations.AddField(
            model_name='upi',
            name='address',
            field=models.CharField(default=None, max_length=100),
        ),
        migrations.AddField(
            model_name='upi',
            name='phoneno',
            field=models.CharField(default=None, max_length=10),
        ),
        migrations.AddField(
            model_name='upi',
            name='username',
            field=models.CharField(default=None, max_length=50),
        ),
        migrations.CreateModel(
            name='Card',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('card_number', models.CharField(max_length=12, null=True)),
                ('Expiry_date', models.DateTimeField()),
                ('cvv', models.IntegerField()),
                ('username', models.CharField(max_length=50)),
                ('Amount', models.IntegerField()),
                ('Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='groceryapp.userregistration')),
            ],
        ),
    ]
