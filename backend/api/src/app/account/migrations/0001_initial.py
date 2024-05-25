# Generated by Django 5.0.6 on 2024-05-25 08:22

import uuid
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False, verbose_name='id')),
                ('username', models.CharField(max_length=20, verbose_name='ユーザー名')),
                ('email', models.EmailField(max_length=100, unique=True, verbose_name='メールアドレス')),
                ('bio', models.TextField(blank=True, max_length=100, null=True, verbose_name='自己紹介メッセージ')),
                ('last_login_at', models.DateTimeField(blank=True, null=True, verbose_name='最終ログイン日時')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='登録日時')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='更新日時')),
                ('is_active', models.BooleanField(default=True, verbose_name='有効')),
                ('is_superuser', models.BooleanField(default=False, verbose_name='管理者権限')),
                ('is_staff', models.BooleanField(default=False, verbose_name='スタッフ権限')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'ユーザー',
                'verbose_name_plural': 'ユーザー',
                'db_table': 'users',
            },
        ),
    ]