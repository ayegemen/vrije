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
                ('title', models.CharField(unique=True, max_length=150)),
                ('image', models.ImageField(default=b'default/news.png', upload_to=b'article/%Y')),
                ('text', models.TextField()),
                ('slug', models.SlugField(unique=True, max_length=150)),
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
                ('title', models.CharField(unique=True, max_length=50)),
                ('picture', models.FileField(default=b'default/news.png', upload_to=b'city/')),
                ('video', models.BooleanField(default=False)),
                ('video_url', models.URLField(null=True, blank=True)),
                ('hq_address', models.TextField(blank=True)),
                ('twitter_link', models.CharField(max_length=250, blank=True)),
                ('youtube_link', models.CharField(max_length=250, blank=True)),
                ('facebook_link', models.CharField(max_length=250, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Member',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('title', models.CharField(max_length=50, blank=True)),
                ('text', models.TextField(blank=True)),
                ('email', models.EmailField(max_length=50, blank=True)),
                ('phone', models.CharField(max_length=20, blank=True)),
                ('image', models.ImageField(default=b'default/news.png', upload_to=b'member/')),
                ('published', models.BooleanField(default=False)),
                ('city', models.ManyToManyField(to='cities_news.City')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Point',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('number', models.CharField(max_length=50)),
                ('title', models.CharField(max_length=100)),
                ('text', models.TextField()),
                ('slug', models.SlugField(unique=True, max_length=100)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Position',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('header', models.CharField(max_length=100)),
                ('number', models.CharField(max_length=50)),
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
                ('word', models.CharField(unique=True, max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='point',
            name='position',
            field=models.ForeignKey(to='cities_news.Position'),
            preserve_default=True,
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
