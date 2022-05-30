from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import product



class productform(forms.ModelForm):
    class Meta:
        model=product
        fields=['name','discriptiom', 'image']      
