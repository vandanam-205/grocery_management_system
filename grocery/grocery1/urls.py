"""
URL configuration for grocery1 project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.index),
    path('categorypage/',views.categorypage,name='categorypage'),
    path('contact/',views.contact),
    path('about-us/',views.about_us),
    path('register/',views.userregister,name='register'),
    path('login/',views.login,name='login'),
    path('index2/',views.index2,name='index2'),
    path('subcategorypage/<int:pk>', views.subcategorypage, name='subcategorypage'),
    path('productdetailpage/<int:pk>',views.productdetail,name='productdetailpage'),
    path('productpage/<int:pk>',views.productpage,name='productpage'),
    path('addcart/',views.addcart,name='addcart'),
    path('payment/',views.payment,name='payment'),
    path('cashondelivery/',views.cash),
    path('confirmation/',views.conform,name='confirm'),
    path('logout/',views.logout,name='logout'),
    path('drop/<int:pk>',views.drop,name='drop'),
    path('wishlistdata/<int:pk>',views.wishlistdata,name='wishlistdata'),
    path('wishlistdata1/<int:pk>',views.wishlistdata1,name='wishlistdata1'),
    path('wishlistpage/',views.wishlistpage,name='wishlistpage'),
    path('cartdata1/<int:pk>',views.cartdata1,name='cartdata1'),
    path('final/',views.final,name='final'),
    path('upi/',views.upipay,name='upi'),
    path('card/',views.card,name='card'),
    # path('payment1/<int:pk>',views.payment1,name='payment1'),
    # path('payment2/<int:pk>',views.payment2,name='payment2'),
    # path('payment3/<int:pk>',views.payment3,name='payment3'),
    path('orderdata/',views.orderdata,name='orderdata'),




    # path('productpage/<int:pk>',views.productpage,name='productpage'),

]

if settings.DEBUG:
    urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
