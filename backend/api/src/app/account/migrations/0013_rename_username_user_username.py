# Generated by Django 5.0.6 on 2024-06-19 12:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0012_rename_username_user_username'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='userName',
            new_name='username',
        ),
    ]
