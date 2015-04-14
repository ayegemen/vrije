from django.conf.urls import patterns, include, url
from django.contrib import admin



# TWO import for dealing with static and media files
# www.tangowithdjango.com/book17/chapters/templates_static.html
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = patterns('',
    # Examples:
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include('cities_news.urls')),
)



# for serving static
if not settings.DEBUG:
        urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

# serve media while in development
if settings.DEBUG:
    urlpatterns += patterns(
        'django.views.static',
        (r'^media/(?P<path>.*)',
        'serve',
        {'document_root': settings.MEDIA_ROOT}), )