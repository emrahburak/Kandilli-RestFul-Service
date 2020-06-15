from django.urls import path
from .views import kandilli_index


app_name = 'kandilli'



urlpatterns = [

    path('index/',kandilli_index, name='index'),



    ]
