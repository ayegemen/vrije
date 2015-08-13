# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(unique=True, max_length=50)),
                ('image', models.ImageField(default=b'default/nieuws.png', upload_to=b'article/%Y')),
                ('text', models.TextField()),
                ('slug', models.SlugField(unique=True)),
                ('published', models.BooleanField(default=False)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
                ('modified', models.DateTimeField(auto_now=True)),
                ('author', models.ForeignKey(editable=False, to=settings.AUTH_USER_MODEL)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(unique=True, max_length=25)),
                ('picture', models.FileField(default=b'default/nieuws.png', upload_to=b'city/')),
                ('video', models.BooleanField(default=False)),
                ('video_url', models.URLField(null=True, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Mensen',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('title', models.CharField(max_length=50, blank=True)),
                ('text', models.TextField(blank=True)),
                ('email', models.EmailField(max_length=50, blank=True)),
                ('phone', models.CharField(max_length=20, blank=True)),
                ('image', models.ImageField(default=b'default/nieuws.png', upload_to=b'mensen/')),
                ('published', models.BooleanField(default=False)),
                ('lo', models.BooleanField(default=False)),
                ('city', models.ManyToManyField(to='cities_news.City')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('word', models.CharField(unique=True, max_length=35)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='article',
            name='city',
            field=models.ManyToManyField(to='cities_news.City'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='article',
            name='tags',
            field=models.ManyToManyField(to='cities_news.Tag'),
            preserve_default=True,
        ),
    ]
