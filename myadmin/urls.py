from django.urls import path
from.import views

urlpatterns = [
    path('',views.adminhome),
    path('manageusers/',views.manageusers),
    path('manageuserstatus/',views.manageuserstatus),
    path('products/',views.products),
    path('addcategory/',views.addcategory),
    path('addsubcategory/',views.addsubcategory),
    path('viewuserfunds/',views.viewuserfunds),
    path('epadmin/',views.epadmin)
]
