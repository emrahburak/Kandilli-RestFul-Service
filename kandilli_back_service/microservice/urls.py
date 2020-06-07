from django.urls import path 
from .views import kandilli_remote


app_name = 'microservice'



urlpatterns = [

    path('kandilli/',kandilli_remote, name='kandilli'),


    ]
