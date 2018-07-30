"""
@file: adminx.py
@brief: adminx
@author: feihu1996.cn
@date: 18-7-29 下午4:08
@version: 1.0
"""

import xadmin
from xadmin import views

from main.models import Works


class BaseSetting:
    """
    xadmin全局配置类
    """
    enable_themes = True
    use_bootswatch = True


class GlobalSettings:
    """
    xadmin全局配置类
    """
    site_title = 'works'
    site_footer = 'works'
    # 折叠左侧菜单
    menu_style = 'accordion'


class WorksAdmin:
    # 自定义列表页显示字段
    list_display = ['cover', 'title', 'desc', 'source', 'add_time']
    # 自定义检索字段
    search_fields = ['cover', 'title', 'desc', 'source']
    # 自定义筛选字段
    list_filter = ['cover', 'title', 'desc', 'source', 'add_time']
    model_icon = 'fa fa-file-powerpoint-o'


xadmin.site.register(Works, WorksAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)
