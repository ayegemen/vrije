# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0003_auto_20150415_0304'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mensen',
            name='email',
            field=models.EmailField(max_length=50, blank=True),
        ),
        migrations.AlterField(
            model_name='mensen',
            name='phone',
            field=models.CharField(max_length=20, blank=True),
        ),
        migrations.AlterField(
            model_name='mensen',
            name='text',
            field=models.TextField(blank=True),
        ),
        migrations.AlterField(
            model_name='mensen',
            name='title',
            field=models.CharField(max_length=50, blank=True),
        ),
    ]
