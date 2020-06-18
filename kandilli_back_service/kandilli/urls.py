from django.urls import path
from .views import kandilli_remote


app_name = 'kandilli'



urlpatterns = [

    path('kandilli/',kandilli_remote, name='remote'),

]
