from django.contrib import admin

from .models import AuthCode, User


class UserAdmin(admin.ModelAdmin):
    readonly_fields = (
        "id",
        "created_at",
        "updated_at",
    )
    fieldsets = [
        (
            "基本情報",
            {
                "fields": [
                    "id",
                    "username",
                    "email",
                    "bio",
                ]
            },
        ),
        (
            "システム情報",
            {
                "fields": [
                    "last_login_at",
                    "created_at",
                    "updated_at",
                ]
            },
        ),
        (
            "権限情報",
            {
                "fields": [
                    "is_active",
                    "is_superuser",
                    "is_staff",
                ]
            },
        ),
    ]


class AuthCodeAdmin(admin.ModelAdmin):
    readonly_fields = ("created_at",)
    fieldsets = [
        (
            "基本情報",
            {
                "fields": [
                    "email",
                    "auth_code",
                    "email_send_count",
                    "authentication_tries",
                    "is_locked",
                ]
            },
        ),
        (
            "システム情報",
            {
                "fields": [
                    "created_at",
                ]
            },
        ),
    ]


admin.site.register(User, UserAdmin)
admin.site.register(AuthCode, AuthCodeAdmin)
