from django.contrib import admin

from .models import Follow

# Register your models here.


class FollowAdmin(admin.ModelAdmin):
    list_display = (
        "by",
        "to",
        "created_at",
    )
    search_fields = (
        "by",
        "to",
    )
    list_per_page = 100
    readonly_fields = ("created_at",)
    ordering = ("-created_at",)
    fieldsets = [
        (
            "基本情報",
            {
                "fields": [
                    "by",
                    "to",
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


admin.site.register(Follow, FollowAdmin)
