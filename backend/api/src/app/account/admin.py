from django.contrib import admin

from .models import User

# Register your models here.
class UserAdmin(admin.ModelAdmin):
    readonly_fields = (
        'id',
        'created_at',
        'updated_at',
    )
    fieldsets = [
        ('基本情報', {
            'fields': [
                'id',
                'username',
                'email',
                'bio',
            ]
        }),
        ('システム情報', {
            'fields': [
                'last_login_at',
                'created_at',
                'updated_at',
            ]
        }),
        ('権限情報', {
            'fields': [
                'is_active',
                'is_superuser',
                'is_staff',
            ]
        }),
    ]



admin.site.register(User, UserAdmin)
