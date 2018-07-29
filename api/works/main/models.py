from datetime import datetime

from django.db import models


# Create your models here.
class Works(models.Model):
    cover = models.ImageField(upload_to='images/cover/%Y/%m', max_length=100, verbose_name='封面')
    title = models.CharField(max_length=100, verbose_name='名称')
    desc = models.TextField(verbose_name='描述')
    source = models.URLField(max_length=100, verbose_name='网址')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '作品'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
