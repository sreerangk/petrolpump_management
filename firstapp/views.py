from multiprocessing import context
from turtle import update
from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.auth.models import User,auth
from django.contrib.auth.decorators import login_required
from .models import addnews2, order, u_dp,product,User,addnews
from.forms import productform


# Create your views here.
def base(request):
    return render(request, "base.html")

def index(request):
    nw=addnews2.objects.all()
    data=u_dp.objects.all()
    news=addnews.objects.all()
    products=product.objects.all()
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
    context={'data':data, 'products':products, 'news':news,'news2':nw }
    return render(request, "index.html" , context )


def login(request):
    return render(request, "login.html")


def signup(request):
    if request.method=="POST":
        username=request.POST['name']
        email=request.POST['email']
        password=request.POST['pass1']
        password2=request.POST['rpass']
        mob=request.POST['mob']
        if password==password2:
            if User.objects.filter(username=username).exists():
                print('user already exists')
                return redirect('login')
            elif User.objects.filter(email=email).exists():
                print('email already exists')
                return redirect('login')
            else:
                user=User.objects.create_user(username=username,email=email,password=password)
                mo=u_dp(userdt=user,contact_no=mob)
                mo.save()
                user.save()
                print('user created')
                return redirect('login')
        else:
            print('password not matching')
            return redirect('signup')
    else:

        return render(request, 'signup.html')



def userlogin(request):
    if request.method=="POST":
        user_name=request.POST['username']
        pass_word=request.POST['Password']
        user=auth.authenticate(username=user_name,password=pass_word)
        # request.session["lin"] = user.id
        print(user)
        if user is not None:
            auth.login(request,user)
            print('user not none')
            return redirect('index')
        else:
            print('failed')
            return redirect('login')
    return render(request, "login.html")


@login_required(login_url='login')
def logout(request):
    request.session["lin"] = ""
    auth.logout(request)
    return redirect('login')

#change password

def changepassword(request):
    data=u_dp.objects.all()
    
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
    context={'data':data}
  
    return render(request,'changepass.html', context )
 
@login_required(login_url='login')
def changepasswordauth(request):
    if request.method=="POST":
        oldpassword=request.POST['oldpassword']
        newpassword=request.POST['newpassword']
        newpassword2=request.POST['newpassword2']
        user = User.objects.get(username=request.user)
        check=user.check_password(oldpassword)

        if check==True:
            if newpassword==newpassword2:
                user.set_password(newpassword)
                user.save()
              #messages.info(request,'password changed successfully')
                print('password changed')
                return redirect('login')
            else:
             #   messages.info(request,'password not matching')
                print('password22 not matching')
                return render(request,'changepass.html')
        else:
            # messages.info(request,'old password not matching')
             return render(request,'changepass.html')
    else:
        return render(request,'changepass.html')


def Service(request):
    data=u_dp.objects.all()
    
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
    context={'data':data,}

    return render(request, "Service.html" , context)




@login_required(login_url='login')
def editpro(request):
    data=u_dp.objects.all()
    
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
    context={'data':data}

    return render(request, "editpro.html" , context)

def userpro(request):
    data=u_dp.objects.all()
    
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
    context={'data':data,}

    return render(request, "userpro.html", context)


@login_required(login_url='login')
def editauth(request):
    data=u_dp.objects.get(userdt__id=request.user.id)
    context={}
    context['data']=data
    if request.method=="POST":
        na=request.POST['name']
        em=request.POST['email']
        mo=request.POST['mob']
        ci=request.POST['city']
        ad=request.POST['address']
        us=User.objects.get(id=request.user.id)
        us.username=na
        us.email=em
        us.save()
        data.Address=ad
        data.contact_no=mo
        data.city=ci
        data.save()
        if "pic" in request.FILES:
            data.dp=request.FILES['pic']
            data.save()
        else:
            print("no pic")
        context['msg']="updated"
        return render(request,'userpro.html', context)
    return render(request,'editpro.html', context)


def email(request,pk): 
    x=pk
    data=u_dp.objects.all()
    
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
    context={'data':data}

    if request.user.is_authenticated:
        if request.method=="POST":
            print(request.POST)           
            qty=request.POST['qty']
            mail=request.POST['email']
            name=request.user.id
            sub=request.POST['sub']
            print(qty)
            products=get_object_or_404(product,id=x)
            print(product)
            usr=get_object_or_404(User,id=request.user.id)
            print(usr)
            print("added") 
            orders=order(userid=usr,product=products,quantity=qty,subject=sub,mail=mail)
            orders.save()


    return render(request,'email.html',context )



    #admin....................................................


def adminlogin(request):
    products=order.objects.all()

    return render(request, "adminlogin.html",{'products': products })

def oderdelete(request,pk):
    products=order.objects.get(id=pk)
    products.delete()
    return redirect('adminlogin')

@login_required(login_url='login')
def prodectinsert(request): 
    products=product.objects.all()
    if request.method=='POST':
        form=productform(request.POST,request.FILES)
        if form.is_valid():
            form.save()
            return redirect('prodectinsert')
    else:
        form=productform()

        
    context={'form':form,'products':products }
    return render(request, "prodectinsert.html",context)

def productdelete(request,pk):
    products=product.objects.get(id=pk)
    products.delete()
    return redirect('prodectinsert' )

def productedit(request,pk):   
    products=product.objects.get(id=pk)
    if request.method=='POST':
        form=productform(request.POST,request.FILES,instance=products)
        if form.is_valid():
            form.save()
            return redirect('prodectinsert')
    else:
        form=productform(instance=products) 
    context={'form':form}    
    return render(request,'productedit.html',context )

@login_required(login_url='login')
def productdetails(request,pk):

    products=product.objects.filter(id=pk)
    data=u_dp.objects.all()
    
    try:
        data=u_dp.objects.get(userdt__id=request.user.id)
     
    except u_dp.DoesNotExist:
        user = None
 
    context={'products':products,'data':data}
    return render(request, 'productdetails.html',context)
        
def news(request):
    nw=addnews.objects.all()
    if request.method=="POST":
        t=request.POST['TITLE']
        news=addnews(title=t)
        news.save() 
        return redirect( 'index' ) 

    return render(request, 'news.html',{'news':nw})


def newsdelete(request,pk):
    news=addnews.objects.get(id=pk)
    news.delete()
    return redirect('news')



def news2(request):
    nw=addnews2.objects.all()
    if request.method=="POST":
        t=request.POST['NOTS']
        news2=addnews2(title2=t)
        news2.save() 
        return redirect( 'index' ) 

    return render(request,'news2.html',{'news2':nw})

def newsdelete(request,pk):
    news2=addnews2.objects.get(id=pk)
    news2.delete()
    return redirect('news2')


def cart(request):
    return render(request,'cart.html')
