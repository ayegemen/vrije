from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify

from datetime import datetime


class City(models.Model):
    title   = models.CharField(max_length=50, unique=True)
    picture = models.FileField(upload_to='city/', default='default/news.png')
    video   = models.BooleanField(default=False)
    video_url   = models.URLField(blank=True, null=True)
    hq_address  = models.TextField(blank=True)
    twitter_link = models.CharField(max_length=250, blank=True)
    youtube_link = models.CharField(max_length=250, blank=True)
    facebook_link    = models.CharField(max_length=250, blank=True)
    
    def __unicode__(self):
        return self.title 
    
    def save(self, *args, **kwargs):
        self.title = self.title.title()
        super(City, self).save(*args, **kwargs)
        
    def admin_image_city(self):
        # Show city image in admin view
        return u'<img height="50" src="%s" />' % self.picture.url
    admin_image_city.short_description = 'Image'
    admin_image_city.allow_tags = True

class Tag(models.Model):
    word = models.CharField(max_length=50, unique=True)
    
    def __unicode__(self):
        return self.word
    

class Article(models.Model):
    city    = models.ManyToManyField(City)
    title   = models.CharField(max_length=150, unique=True)
    tags    = models.ManyToManyField(Tag)
    image   = models.ImageField(upload_to='article/%Y', default='default/news.png')
    text    = models.TextField()
    slug    = models.SlugField(max_length=150, unique=True)
    author  = models.ForeignKey(User, editable=False)
    published   = models.BooleanField(default=False)
    created_date    = models.DateTimeField(auto_now_add=True, auto_now=False)
    modified    = models.DateTimeField(auto_now_add=False, auto_now=True)
    
    def __unicode__(self):
        return self.title
    
    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super(Article, self).save(*args, **kwargs)
        
    def admin_image_article(self):
        return u'<img height="150" src="%s" />' % self.image.url
    admin_image_article.short_description = 'Image'
    admin_image_article.allow_tags = True


class Member(models.Model):
    city    = models.ManyToManyField(City)
    name    = models.CharField(max_length=50)
    title   = models.CharField(max_length=50, blank=True)
    text    = models.TextField(blank=True)
    email   = models.EmailField(max_length=50, blank=True)
    phone   = models.CharField(max_length=20, blank=True)
    image   = models.ImageField(upload_to='member/', default='default/news.png')
    published   = models.BooleanField(default=False)

    def __unicode__(self):
        return self.name


class Position(models.Model):
    city    = models.ManyToManyField(City)
    header  = models.CharField(max_length=100)
    number  = models.CharField(max_length=50)

    def __unicode__(self):
        return self.header


class Point(models.Model):
    position    = models.ForeignKey(position)
    number  = models.CharField(max_length=50)
    title   = models.CharField(max_length=100)
    text    = models.TextField()
    slug    = models.SlugField(max_length=100, unique=True)

    def __unicode__(self):
        return self.title