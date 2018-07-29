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

urlpatterns = [
    path('admin/', xadmin.site.urls),

    path('works/', WorksView.as_view(), name='get_works'),

    # 上传文件访问url配置
    url(r'media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
]

if not settings.DEBUG:  # 生产环境
    urlpatterns.append(url(r'static/(?P<path>.*)$', serve,  {'document_root': settings.STATIC_ROOT}))
    # handler404 = 'users.views.page_not_found'  # 全局404页面配置
    # handler500 = 'users.views.page_error'  # 全局500页面配置
