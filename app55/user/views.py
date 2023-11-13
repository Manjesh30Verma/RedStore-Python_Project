from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from myadmin import models as myadmin_models
from app5 import models as app5_models
from . import models
import time
media_url = settings.MEDIA_URL


# middleware to check session for user routes
def sessioncheckuser_middleware(get_response):
    def middleware(request):
        if request.path == '/user/' or request.path == '/user/viewsproducts/' or request.path == '/user/viewsubprod/' or request.path == '/user/funds/' or request.path == '/user/payment/' or request.path == '/user/success/' or request.path == '/user/cancel/' or request.path == '/user/viewfunds/' or request.path == '/user/cpuser/' or request.path == '/user/epuser/':
            if request.session['sunm'] == None or request.session['sroll'] != "user":
                response = redirect('/login/')
            else:
                response = get_response(request)
        else:
            response = get_response(request)
        return response
    return middleware


def userhome(request):
    return render(request, "userhome.html", {"sunm": request.session["sunm"]})


def viewsproducts(request):
    clist = myadmin_models.categroy.objects.all()
    return render(request, "viewsproducts.html", {"clist": clist, "media_url": media_url, "sunm": request.session["sunm"]})

def viewsearchproducts(request):
    subcatname=request.GET.get("subcatname")
    # subcaticonname=request.GET.get("subcaticonname")
    sclist = myadmin_models.Subcategroy.objects.all()
    plist = myadmin_models.products.objects.filter(subcatname=subcatname)
    return render(request, "viewsearchproducts.html", {"subcatname":subcatname,"sclist":sclist,"media_url": media_url,"plist":plist,"sunm": request.session["sunm"]})

def viewsubprod(request):
    catname = request.GET.get("catname")
    clist = myadmin_models.categroy.objects.all()
    sclist = myadmin_models.Subcategroy.objects.filter(catname=catname)
    return render(request, "viewsubprod.html", {"catname": catname, "clist": clist, "sclist": sclist, "media_url": media_url, "sunm": request.session["sunm"]})


def funds(request):
    paypalURL = "https://www.sandbox.paypal.com/cgi-bin/webscr"
    paypalID = "sb-l47du4722346795@business.example.com"
    # sb-87rig23537650@personal.example.com
    # ------cash cut
    amt = 100
    return render(request, "funds.html", {"sunm": request.session["sunm"], "paypalURL": paypalURL, "paypalID": paypalID, "amt": amt})


def payment(request):
    uid = request.GET.get("uid")
    amt = request.GET.get("amt")
    p = models.Payment(uid=uid, amt=amt, info=time.asctime())
    p.save()
    return redirect("/user/success/")


def success(request):
    return render(request, "success.html", {"sunm": request.session["sunm"]})


def cancel(request):
    return render(request, "cancel.html", {"sunm": request.session["sunm"]})


def viewfunds(request):
    fDetails = models.Payment.objects.all()
    return render(request, "viewfunds.html", {"sunm": request.session["sunm"], "fDetails": fDetails})


def cpuser(request):
    if request.method == "GET":
        return render(request, "cpuser.html", {"sunm": request.session["sunm"]})
    else:
        sunm = request.session["sunm"]
        opass = request.POST.get("opass")
        npass = request.POST.get("npass")
        cnpass = request.POST.get("cnpass")

        userDetails = app5_models.Register.objects.filter(
            email=sunm, password=opass)
        if len(userDetails) > 0:
            if npass == cnpass:
                app5_models.Register.objects.filter(
                    email=sunm).update(password=cnpass)
                return render(request, "cpuser.html", {"sunm": sunm, "output": "Password Changed Successfully.."})
            else:
                return render(request, "cpuser.html", {"sunm": sunm, "output": "New & Confirm New Password Mismatch"})
        else:
            return render(request, "cpuser.html", {"sunm": sunm, "output": "Invalid Old Password"})


def epuser(request):
	sunm=request.session["sunm"]
	if request.method=="GET":
		if request.GET.get("result")==None:
			output=""
		else:
			output="User Details Updated Successfully...."		
		userDetails=app5_models.Register.objects.filter(email=sunm)
		m,f="",""
		if userDetails[0].gender=="Male":
			m="checked"
		else:
			f="checked"			
		return render(request,"epuser.html",{"sunm":sunm,"userDetails":userDetails[0],"output":output,"m":m,"f":f})
	else:
		name=request.POST.get("name")
		email=request.POST.get("email")
		mobile=request.POST.get("mobile")
		address=request.POST.get("address")
		city=request.POST.get("city")
		gender=request.POST.get("gender")
		
		app5_models.Register.objects.filter(email=email).update(name=name,mobile=mobile,address=address,city=city,gender=gender)
		
		return redirect("/user/epuser/?result=1")