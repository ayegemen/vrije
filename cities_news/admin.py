from django.contrib import admin
from django.template.defaultfilters import slugify
from .models import City, Article, Tag, Member, Position, Point


class PointInline(admin.TabularInline):
    model = Point
    extra = 0
    prepopulated_fields = {'slug':('title',),}
    ordering = ('number',)


class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title',
                    'published',
                    'author', 
                    'image',
                    'created_date', 
                    'modified',
                    'preview_article',
                    )

    list_filter = ['author', 'created_date', 'published', 'city', 'tags']
    search_fields = ['title']
    prepopulated_fields = {'slug':('title',),}
    readonly_fields = ('admin_image_article',)    

    def save_model(self, request, obj, form, change):
        if getattr(obj, 'author', None) is None:
            obj.author = request.user
        obj.save()
        
    # let's normal users only see there own articles in the admin
    def get_queryset(self, request):
        qs = super(ArticleAdmin, self).get_queryset(request)
        if request.user.is_superuser:
            return qs
        return qs.filter(author=request.user)
    
    def preview_article(self, obj):
        return '<a href="/preview/%s">%s</a>' % (obj.slug, obj.slug)
    #Article admin needs this for preview article 
    preview_article.allow_tags = True


class CityAdmin(admin.ModelAdmin):
    list_display = ('title', 'admin_image_city',)


class PositionAdmin(admin.ModelAdmin):
    list_display = ('header', 'number')
    ordering = ('number',)
    inlines = [PointInline,]


admin.site.register(City, CityAdmin)
admin.site.register(Member)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Position, PositionAdmin)
