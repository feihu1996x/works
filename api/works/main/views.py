import json

from django.views.generic.base import View
from django.http import HttpResponse

from main.models import Works


# Create your views here.
class WorksView(View):
    """
    作品集请求处理类
    """
    def get(self, request):
        results = []
        all_works = Works.objects.filter()
        for works in all_works:
            results.append({
                'id': works.id,
                'cover': '/media/'+str(works.cover),
                'title': works.title,
                'desc': works.desc,
                'source': works.source
            })

        response = HttpResponse(json.dumps(results), content_type='application/json')

        # 允许跨域请求
        response['Access-Control-Allow-Origin'] = '*'

        return response
