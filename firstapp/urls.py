from django.urls import path, include
from django.views import View
from .import views


urlpatterns = [
    path('base', views.base, name='base'),
    path('', views.index, name='index'),
    path('login', views.login, name='login'),
    path('signup', views.signup, name='signup'),
    path('userlogin',views.userlogin, name='userlogin'),
    path('changepassword',views.changepassword, name='changepassword'),
    path('changepasswordauth',views.changepasswordauth, name='changepasswordauth'),
    path('logout',views.logout, name='logout'),
    path('Service',views.Service, name='Service'),
    path('logout',views.logout, name='logoout'),
    path('userpro',views.userpro, name='userpro'),
    path('editpro',views.editpro, name='editpro'),
    path('editauth',views.editauth, name='editauth'),
    path('email',views.email, name='email'),

] 