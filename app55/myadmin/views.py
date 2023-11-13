from django.shortcuts import render , redirect
from django.http import HttpResponse
from app5 import models as app5_models # alias name new app5_models
from django.core.files.storage import FileSystemStorage
from . import models
from user import models as user_models
import time
# Middleware to check session for admin routes.
def sessioncheckmyadmin_middleware(get_response):
	def middleware(request):
		if request.path=='/myadmin/' or request.path=='/myadmin/manageusers/' or request.path=='/myadmin/manageuserstatus/' or request.path=='/myadmin/addcategory/' or request.path=='/myadmin/addsubcategory/' or request.path=='/myadmin/viewfunds/' or request.path=='/myadmin/epadmin/':
			if request.session['sunm']==None or request.session['sroll']!="admin":
				response = redirect('/login/')
			else:
				response = get_response(request)
		else:
			response = get_response(request)		
		return response	
	return middleware


def adminhome(request):
    #print(request.session["sunm"])
    return render(request,"adminhome.html",{"sunm":request.session["sunm"]})


def manageusers(request):
    uDetails=app5_models.Register.objects.filter(roll="user")
    #print(uDetails)
    return render(request,"manageusers.html",{"uDetails":uDetails,"sunm":request.session["sunm"]})    

def manageuserstatus(request):
    regid=int(request.GET.get("regid"))
    s=request.GET.get("s")
    if s=="verify":
        app5_models.Register.objects.filter(regid=regid).update(status=1)
    elif s=="block":
        app5_models.Register.objects.filter(regid=regid).update(status=0)
    else:
        app5_models.Register.objects.filter(regid=regid).delete()    
    return redirect("/myadmin/manageusers/")



def products(request):
    sclist=models.Subcategroy.objects.all()
    if request.method=="GET":
        return render(request,"products.html",{"sunm":request.session["sunm"],"sclist":sclist,"output":""})
    else:
        title=request.POST.get("title")
        subcatname=request.POST.get("subcatname")
        description=request.POST.get("description")
        ldate=request.POST.get("ldate")
        edate=request.POST.get("edate")

        p=models.products(title=title,subcatname=subcatname,description=description,ldate=ldate,edate=edate,info=time.asctime())
        
        p.save()
        return render(request,"products.html",{"sunm":request.session["sunm"],"sclist":sclist,"output":"Products Added Successfully!"})

def addcategory(request):
    if request.method=="GET":
     return render(request,"addcategory.html",{"output":'',"sunm":request.session["sunm"]})
    else:
        catname=request.POST.get("catname")
        caticon=request.FILES["caticon"]
        fs = FileSystemStorage()
        filename=fs.save(caticon.name,caticon)
        p=models.categroy(catname=catname,caticonname=filename)
        p.save()
        return render(request,"addcategory.html",{"output":"Category Added Successfully!!!!!!","sunm":request.session["sunm"]})

def addsubcategory(request):
    clist=models.categroy.objects.all()
    if request.method=="GET":
     return render(request,"addsubcategory.html",{"output":'',"clist":clist,"sunm":request.session["sunm"]})
    else:
        catname=request.POST.get("catname")
        subcatname=request.POST.get("subcatname")
        caticon=request.FILES["subcaticonname"]
        fs = FileSystemStorage()
        filename=fs.save(caticon.name,caticon)
        p=models.Subcategroy(catname=catname,subcatname=subcatname,subcaticonname=filename)
        p.save()
        return render(request,"addsubcategory.html",{"output":"SubCategory Added Successfully....","clist":clist,"sunm":request.session["sunm"]})

def viewuserfunds(request):
	fDetails=user_models.Payment.objects.all()
	return render(request,"viewuserfunds.html",{"sunm":request.session["sunm"],"fDetails":fDetails})

def epadmin(request):
	sunm=request.session["sunm"]
	if request.method=="GET":
		if request.GET.get("result")==None:
			output=""
		else:
			output="Admin Details Updated Successfully...."		
		adminDetails=app5_models.Register.objects.filter(email=sunm)
		m,f="",""
		if adminDetails[0].gender=="male":
			m="checked"
		else:
			f="checked"			
		return render(request,"epadmin.html",{"sunm":sunm,"adminDetails":adminDetails[0],"output":output,"m":m,"f":f})
	else:
		name=request.POST.get("name")
		email=request.POST.get("email")
		mobile=request.POST.get("mobile")
		address=request.POST.get("address")
		city=request.POST.get("city")
		gender=request.POST.get("gender")
		
		app5_models.Register.objects.filter(email=email).update(name=name,mobile=mobile,address=address,city=city,gender=gender)
		
		return redirect("/myadmin/epadmin/?result=1")    

