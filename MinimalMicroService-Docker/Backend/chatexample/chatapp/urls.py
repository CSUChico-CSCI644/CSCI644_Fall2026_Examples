from django.urls import path
from django.conf import settings
from django.contrib.auth import views as auth_views
from django.conf.urls.static import static



from . import views

urlpatterns = [
    path('', views.index, name="index"),
    path("<str:room_name>/", views.room, name="room"),
]