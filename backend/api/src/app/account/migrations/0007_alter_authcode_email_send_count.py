# Generated by Django 5.0.6 on 2024-05-26 00:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0006_remove_authcode_email_resend_count_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='authcode',
            name='email_send_count',
            field=models.IntegerField(default=0, verbose_name='メール送信回数'),
        ),
    ]
