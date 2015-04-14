from django.db import models
from django.template.defaultfilters import slugify
from django.contrib.auth.models import User

from datetime import datetime



class City(models.Model):

    title = models.CharField(max_length=25, unique=True)
    picture = models.FileField(upload_to='city/', default='default/nieuws.png')
    video = models.BooleanField(default=False)
    video_url = models.URLField(blank=True, null=True)
    
    def __unicode__(self):
        return self.title 
    
    def save(self, *args, **kwargs):
        # this feels like monty python
        self.title = self.title.title()
        super(City, self).save(*args, **kwargs)
        
    def admin_image(self):
        return u'<img height="50"src="%s" />' % self.picture.url
    admin_image.short_description = 'Image'
    admin_image.allow_tags = True
    
    
class Tag(models.Model):
    word = models.CharField(max_length=35, unique=True)
    
    def __unicode__(self):
        return self.word
    
    
class Article(models.Model):
    
    city = models.ManyToManyField(City)
    title = models.CharField(max_length=50, unique=True)
    tags = models.ManyToManyField(Tag)
    image = models.ImageField(upload_to='article/%Y', default='default/nieuws.png')
    text = models.TextField()
    slug = models.SlugField(max_length=50, unique=True)
    author = models.ForeignKey(User, editable = False)
    published = models.BooleanField(default=False)
    created_date = models.DateTimeField(auto_now_add=True, auto_now=False)
    modified = models.DateTimeField(auto_now_add=False, auto_now=True)
    
    def __unicode__(self):
        return self.title
    
    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super(Article, self).save(*args, **kwargs)
        
    def image_tag(self):
        return u'<img height="150" src="%s" />' % self.image.url
    image_tag.short_description = 'Image'
    image_tag.allow_tags = True

