from django.contrib import admin

from .models import AuthCode, User


class UserAdmin(admin.ModelAdmin):
    list_display = (
        "email",
        "username",
        "last_login_at",
        "created_at",
        "updated_at",
        "is_active",
        "is_superuser",
    )
    search_fields = ("email",)
    list_per_page = 20
    ordering = ("-created_at",)
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
                    "password",
                    "image",
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
    list_display = (
        "email",
        "auth_code",
        "email_send_count",
        "authentication_tries",
        "is_locked",
        "created_at",
    )
    search_fields = ("email",)
    list_per_page = 20
    readonly_fields = ("created_at",)
    ordering = ("-created_at",)
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
