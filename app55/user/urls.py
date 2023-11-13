from django.urls import path
from.import views

urlpatterns = [
    path('',views.userhome),
    path('viewsproducts/',views.viewsproducts),
    path('viewsubprod/',views.viewsubprod),
    path('viewsearchproducts/',views.viewsearchproducts),
    path('funds/',views.funds),
    path('payment/',views.payment),
    path('success/',views.success),
    path('cancel/',views.cancel),
    path('viewfunds/',views.viewfunds),
    path('cpuser/',views.cpuser),
    path('epuser/',views.epuser)
]
