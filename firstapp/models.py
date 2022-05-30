from tkinter import CASCADE
from turtle import title
from django.db import models
from django.contrib.auth.models import User
from django.forms import FilePathField


# Create your models here.
class user_tbl(models.Model):
    uname=models.CharField(max_length=200)
    uemail=models.EmailField()
    uage=models.IntegerField()

    
class u_dp(models.Model):
    userdt=models.OneToOneField(User,on_delete=models.CASCADE)
    dp=models.ImageField(upload_to='user_dp/',null=True,blank=True)
    Address=models.CharField(max_length=100,null=True,blank=True)
    city=models.CharField(max_length=100,null=True,blank=True)
    addedon=models.DateTimeField(auto_now_add=True)
    updatedon=models.DateTimeField(auto_now=True)
    contact_no=models.IntegerField(null=True,blank=True)


class product(models.Model):
    name=models.CharField(max_length=200)
    discriptiom=models.CharField(max_length=200)
    image=models.ImageField(upload_to='product_img')

class order(models.Model):
    product=models.ForeignKey(product,on_delete=models.CASCADE)
    mail=models.EmailField()
    quantity=models.IntegerField()
    subject=models.CharField(max_length=30)
    userid=models.ForeignKey(User,on_delete=models.CASCADE)

class addnews(models.Model):
    title=models.CharField(max_length=250)



class addnews2(models.Model):
    title2=models.CharField(max_length=250)
    