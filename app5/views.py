from django.shortcuts import render , redirect

from . import models
import time
from . import emailAPI

#middleware to check session for mainapp routes
def sessioncheck_middleware(get_response):
	def middleware(request):
		if request.path=='/home/' or request.path=='/about/' or request.path=='/contact/' or request.path=='/login/' or request.path=='/register/':
			request.session['sunm']=None
			request.session['sroll']=None
			response = get_response(request)
		else:
			response = get_response(request)		
		return response	
	return middleware


def home(request):
    return render(request,'home.html')

def about(request):
    return render(request,'about.html')

def contact(request):
    return render(request,'contact.html')    
def register(request):
    if request.method=="GET":
      return render(request,'register.html',{"output":""})
    else:
        #to recive post data
        name=request.POST.get("name")
        email=request.POST.get("email")
        password=request.POST.get("password")
        mobile=request.POST.get("mobile")
        address=request.POST.get("address")
        city=request.POST.get("city")
        gender=request.POST.get("gender")
        
        
        p=models.Register(name=name,email=email,password=password,mobile=mobile,address=address,city=city,gender=gender,status=0,roll="user",info=time.asctime())
        
        p.save()

        emailAPI.sendMail(email,password)

        return render(request,'register.html',{"output":"User Register Successfully"})   


def login(request):
    if request.method=="GET":
     cunm,cpass="",""   
     if request.COOKIES.get("cunm")!=None:
        cunm=request.COOKIES.get("cunm")
        cpass=request.COOKIES.get("cpass")   
     return render(request,'login.html',{"cunm":cunm,"cpass":cpass,"output":""})
    else:
     email=request.POST.get("email")
     password=request.POST.get("password")      
     
     userDetails=models.Register.objects.filter(email=email,password=password,status=1)

     
    if len(userDetails)>0:
        #to store user details in session
       request.session["sunm"]=userDetails[0].email
       request.session["sroll"]=userDetails[0].roll

       if userDetails[0].roll=="admin":
        response=redirect("/myadmin/")
       else:
        response=redirect("/user/")
       # to store cookies details:
       if request.POST.get("chk")!=None:
           response.set_cookie("cunm",userDetails[0].email,max_age=3600*24*365)
           response.set_cookie("cpass",userDetails[0].password,max_age=3600*24*365)
       return response     
    else:  
        return render(request,'login.html',{"cunm":cunm,"cpass":cpass,"output":"Invalid user or verify your account...."})


def verify(request):
    vemail=request.GET.get("vemail")
    models.Register.objects.filter(email=vemail).update(status=1)
    return redirect("/login/")

def test1(request):
    if request.method=="GET":
     return render(request,'test1.html',{"output":""})
    else:
     name=request.POST.get("name")
    email=request.POST.get("email")
    password=request.POST.get("password")
    mobile=request.POST.get("mobile")
    address=request.POST.get("address")
    gender=request.POST.get("gender")
    p=models.test1(name=name,email=email,password=password,mobile=mobile,address=address,gender=gender)
    p.save()  
    return render(request,'test1.html',{"output":"User Register Successfully"})