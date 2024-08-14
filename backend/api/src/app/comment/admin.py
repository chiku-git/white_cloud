# Register your models here.
from django.contrib import admin

from .models import Comment


# Register your models here.
class CommentAdmin(admin.ModelAdmin):
    list_display = (
        "reply_to",
        "reply_from",
        "created_at",
    )
    search_fields = (
        "reply_to",
        "reply_from",
    )
    list_per_page = 20
    readonly_fields = ("reply_to", "reply_from", "created_at")
    ordering = ("-created_at",)
    fieldsets = [
        (
            "基本情報",
            {
                "fields": [
                    "reply_to",
                    "reply_from",
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


admin.site.register(Comment, CommentAdmin)
