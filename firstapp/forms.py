from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import u_dp


class UserRegistarForm(UserCreationForm):  
    email=forms.EmailField()
    class Meta:
        model = User
        fields=['username','email']

class user_profile(forms.ModelForm):
    contact_no=forms.IntegerField()
    class Meta:
        model=u_dp
        fields=['contact_no']
