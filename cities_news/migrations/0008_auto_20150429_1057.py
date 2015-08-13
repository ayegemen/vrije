# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cities_news', '0007_standpunten_city'),
    ]

    operations = [
        migrations.AlterField(
            model_name='standpunten',
            name='kopje',
            field=models.CharField(max_length=100),
        ),
    ]
