# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0005_auto_20150424_0050'),
    ]

    operations = [
        migrations.CreateModel(
            name='Punten',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nummer', models.CharField(max_length=50)),
                ('title', models.CharField(unique=True, max_length=100)),
                ('text', models.TextField()),
                ('slug', models.SlugField(unique=True, max_length=100)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Standpunten',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('kopje', models.CharField(unique=True, max_length=100)),
                ('nummer', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='punten',
            name='standpunt',
            field=models.ForeignKey(to='cities_news.Standpunten'),
            preserve_default=True,
        ),
    ]
