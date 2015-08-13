# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0008_auto_20150429_1057'),
    ]

    operations = [
        migrations.AlterField(
            model_name='punten',
            name='title',
            field=models.CharField(max_length=100),
        ),
    ]
