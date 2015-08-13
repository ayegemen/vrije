# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0004_auto_20150422_0614'),
    ]

    operations = [
        migrations.AddField(
            model_name='city',
            name='bezoek_adres',
            field=models.TextField(default='', blank=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='city',
            name='facebook',
            field=models.CharField(default='', max_length=250, blank=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='city',
            name='twitter',
            field=models.CharField(default='', max_length=250, blank=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='city',
            name='youtube',
            field=models.CharField(default='', max_length=250, blank=True),
            preserve_default=False,
        ),
    ]
