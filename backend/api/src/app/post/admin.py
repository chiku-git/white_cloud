from django.contrib import admin

from .models import Post


# Register your models here.
class PostAdmin(admin.ModelAdmin):
    list_display = (
        "user",
        "body",
        "created_at",
        "updated_at",
    )
    search_fields = ("user",)
    list_per_page = 20
    readonly_fields = ("id", "created_at", "updated_at")
    ordering = ("-created_at",)
    fieldsets = [
        (
            "基本情報",
            {
                "fields": [
                    "id",
                    "user",
                    "body",
                ]
            },
        ),
        (
            "システム情報",
            {
                "fields": [
                    "created_at",
                    "updated_at",
                ]
            },
        ),
    ]


admin.site.register(Post, PostAdmin)
