from django.contrib import admin
from favorite.models import Favorite


# Register your models here.
class FavoriteAdmin(admin.ModelAdmin):
    list_display = (
        "post",
        "user",
        "created_at",
    )
    search_fields = (
        "post",
        "user",
    )
    list_per_page = 20
    readonly_fields = ("post", "user", "created_at")
    ordering = ("-created_at",)
    fieldsets = [
        (
            "基本情報",
            {
                "fields": [
                    "post",
                    "user",
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


admin.site.register(Favorite, FavoriteAdmin)
