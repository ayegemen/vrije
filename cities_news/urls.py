from django.conf.urls import patterns, url
from cities_news import views

urlpatterns = patterns('',
        url(r'^$', views.index, name='index'),
        url(r'^(?P<city_name>\w+)/nieuws/?$', views.nieuws, name="nieuws"),
        url(r'^standpunten/?$', views.standpunten, name="standpunten"),
        url(r'^(?P<city_name>\w+)/mensen/?$', views.mensen, name="mensen"),
        url(r'^(?P<city_name>\w+)/contact/?$', views.contact, name="contact"),
        url(r'^(?P<city_name>\w+)/(?P<article_slug>[\w\-]+)/?$', views.article, name="article"),
        url(r'^(?P<city_name>\w+)/?$', views.city, name="city"),

        )