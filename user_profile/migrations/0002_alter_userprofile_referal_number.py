# Generated by Django 5.2.4 on 2025-07-24 08:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_profile', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='referal_number',
            field=models.CharField(blank=True, max_length=6, null=True),
        ),
    ]
