# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0002_mensen_title'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mensen',
            name='title',
            field=models.TextField(),
        ),
    ]
