# Generated by Django 2.0.7 on 2018-07-29 16:16

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Works',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cover', models.ImageField(upload_to='images/cover/%Y/%m', verbose_name='封面')),
                ('title', models.CharField(max_length=100, verbose_name='名称')),
                ('desc', models.TextField(verbose_name='描述')),
                ('source', models.URLField(max_length=100, verbose_name='网址')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='添加时间')),
            ],
            options={
                'verbose_name': '作品',
                'verbose_name_plural': '作品',
            },
        ),
    ]
