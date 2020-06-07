from django.shortcuts import HttpResponse
from .models import Kandilli
from django.core import serializers
from helpers.checkerror import log_debug, log_error
import json






def kandilli_index(request):
    try:
        status = True
        my_model = Kandilli.objects.all()
    
        get_db_data = serializers.serialize('json',my_model,indent=4)
        log_debug("INDEX")
    except Exception as err:
        status = False
        log_error(err)

    finally:
        if status:

            return HttpResponse(get_db_data, content_type='json')



    


