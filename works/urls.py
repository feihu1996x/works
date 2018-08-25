"""works URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from django.views.static import serve
from django.conf.urls import url
import xadmin

from works import settings
from main.views import WorksView
from main.views import IndexView

urlpatterns = [
]

if not settings.DEBUG:  # 生产环境
    urlpatterns.append(url(settings.URL_PREFIX + r'static/(?P<path>.*)$', serve,  {'document_root': settings.STATIC_ROOT}))
    # handler404 = 'users.views.page_not_found'  # 全局404页面配置
    # handler500 = 'users.views.page_error'  # 全局500页面配置

if settings.URL_PREFIX:  # 统一添加url前缀
    urlpatterns.append(path(settings.URL_PREFIX.lstrip("/") + '/admin/', xadmin.site.urls))
    urlpatterns.append(path(settings.URL_PREFIX.lstrip("/")+"/", IndexView.as_view(), name='index'))
    urlpatterns.append(path(settings.URL_PREFIX.lstrip("/") + '/works/', WorksView.as_view(), name='get_works'))
    # 上传文件访问url配置
    urlpatterns.append(url(settings.URL_PREFIX.lstrip("/") + r'/media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}))
else:
    urlpatterns.append(path(settings.URL_PREFIX + 'admin/', xadmin.site.urls))
    urlpatterns.append(path(settings.URL_PREFIX, IndexView.as_view(), name='index'))
    urlpatterns.append(path(settings.URL_PREFIX + 'works/', WorksView.as_view(), name='get_works'))
    # 上传文件访问url配置
    urlpatterns.append(url(settings.URL_PREFIX + r'media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}))

