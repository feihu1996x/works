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
        results = {
            'status': 0,
            'data': [],
            'msg': 'success'
        }
        all_works = Works.objects.filter()
        for works in all_works:
            results['data'].append({
                'id': works.id,
                'cover': 'http://127.0.0.1:8000/media/'+str(works.cover),
                'title': works.title,
                'desc': works.desc,
                'source': works.source
            })

        response = HttpResponse(json.dumps(results), content_type='application/json')

        return response
