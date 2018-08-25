import json

from django.views.generic.base import View
from django.http import HttpResponse
from django.shortcuts import render

from main.models import Works


# Create your views here.
class IndexView(View):
    """
    首页请求处理类
    """ 
    def get(self, request):
        works = {
            "title": "{{works.title}}",
        }
        return render(request, "index.html", {
            "works": works
        }) 


class WorksView(View):
    """
    作品集请求处理类
    """
    def get(self, request):
        callback = request.GET.get('callback', '')  # 解决跨域问题
        results = {
            'status': 0,
            'data': [],
            'msg': 'success'
        }
        all_works = Works.objects.all().order_by('index')
        for works in all_works:
            results['data'].append({
                'id': works.index,
                'cover': '/media/'+str(works.cover),
                'title': works.title,
                'desc': works.desc,
                'source': works.source
            })

        response = HttpResponse('{0}({1})'.format(callback, json.dumps(results)), content_type='application/json')

        return response
