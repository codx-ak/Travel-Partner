from django.urls import path
from . import views
urlpatterns = [
    path('',views.home,name='home'),
    path('Travel-Partner/home',views.home,name='home'),
    path('Travel-Partner/category',views.category,name='category'),
    path('Travel-Partner/category/<str:name>',views.categoryview,name='categoryview'),
    path('Travel-Partner/search/<id>/<str:name>',views.packagedetail,name='packagedetail'),
    path('Travel-Partner/search/<str:name>',views.searchpackage,name='searchpackage'),
    path('Travel-Partner/search',views.Search,name='search'),
    path('Travel-Partner/insurance',views.insurance,name='insurance'),
    path('Travel-Partner/contact',views.contact,name='contact'),
    path('Travel-Partner/booking/<id>/<str:name>',views.Bookings,name='Booking'),
    path('Travel-Partner/addbooking',views.Add_Booking,name='Add_Booking'),
    path('Travel-Partner/payment',views.Payment,name='payment'),
    path('Travel-Partner/register',views.Register,name='Register'),
    path('Travel-Partner/login',views.login_page,name='Login'),
    path('Travel-Partner/logout',views.logout_page,name='Logout'),
    path('Travel-Partner/mybooking',views.Mybooking,name='Mybooking'),
    path('Travel-Partner/guideline',views.guideline,name='guideline'),
    path('Travel-Partner/cancelbooking/<id>',views.cancelbooking,name='cancelbooking'),

    
]

