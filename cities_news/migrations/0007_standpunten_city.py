# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0006_auto_20150425_0830'),
    ]

    operations = [
        migrations.AddField(
            model_name='standpunten',
            name='city',
            field=models.ManyToManyField(to='cities_news.City'),
            preserve_default=True,
        ),
    ]
