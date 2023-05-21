import random
import string
from django.shortcuts import redirect, render
from .form import CustomUserForm
from .models import *
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from django.core.mail import send_mail
from django.utils.html import strip_tags
from django.template.loader import render_to_string
from datetime import date


def home(request):
    package=Package.objects.filter(category__name="Hiking&Trekking")
    return render(request,'Home.html',{"package":package})

def random_bill(stringLength):
            lettersAndDigits = string.ascii_letters.upper() + string.digits
            strr=''.join(random.choice(lettersAndDigits) for i in range(stringLength-2))
            return ('AK'+strr)

def insurance(request):
    return render(request,'Insurance.html')

def contact(request):
    if request.method=='POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        msg=request.POST.get('message')
        Contact.objects.create(name=name,email=email,msg=msg)
        messages.success(request, "Form Submited Successfully")
    return render(request,'Contact.html')

def category(request):
    package_category=Category.objects.filter(status=0)
    return render(request,'Category.html',{"category":package_category})

def categoryview(request,name):
    category_detail=Category.objects.filter(name=name,status=0)
    package=Package.objects.filter(category__name=name,status=0)
    category_blog=Blog.objects.filter(category__name=name)
    gallery=Gallery.objects.filter(category__name=name)
    return render(request,'Category_Detail.html',{"category":category_detail,"blog":category_blog,"package":package,"gallery":gallery})

def packagedetail(request,id,name):
    package=Package.objects.filter(id=id,package_name=name,status=0)
    review=Review.objects.all()
    return render(request,'Package.html',{"package":package,"review":review})

def searchpackage(request,name):
    package=Package.objects.filter(category__name=name,status=0)
    return render(request,'Destination.html',{"package":package})

def Search(request):
    package=Package.objects.filter(status=0)
    return render(request,'Destination.html',{"package":package})

def Bookings(request,id,name):
    if request.user.is_authenticated:
        package=Package.objects.filter(id=id,package_name=name,status=0)
        return render(request,'Booking.html',{"package":package})
    else:
        return redirect("/Travel-Partner/login")

def login_page(request):
    if request.user.is_authenticated:
        redirect("/")
    else:
        if request.method=='POST':
            name=request.POST.get('username')
            passw=request.POST.get('password')
            user=authenticate(request,username=name,password=passw)
            if user is not None:
                login(request,user)
                messages.success(request, "Login Successfully")
                return redirect("/")
            else:
                messages.error(request,"Invalid form submission.")
                return redirect('/Travel-Partner/login')
    return render(request,'Login.html')

def logout_page(request):
    if request.user.is_authenticated:
        logout(request)
    return redirect("/")

def Register(request):
    form=CustomUserForm()
    if request.user.is_authenticated:
        redirect("/")
    else:
        if request.method=='POST':
            form=CustomUserForm(request.POST)
            if form.is_valid():
                form.save()
                messages.success(request, 'Register successfully.!')
                return redirect('/Travel-Partner/login')
        
    return render(request,'Register.html',{'form':form})

def Add_Booking(request):
    if request.method=='POST':
        payment_option=request.POST.get("payment_option")
        booking_id=request.POST.get("booking_id")
        print(booking_id)
        Booking.objects.filter(booking_id=booking_id).update(payment_option=payment_option,payment_status="Paid")
        booking_details=Booking.objects.filter(booking_id=booking_id)
        for detail in booking_details:
            vehicle_charges=0
            driver_charges=0
            insurance_charges=0
        
            if detail.vehicle =="Yes":
                vehicle_charges=5000
            else:
                vehicle_charges=-5000
            if detail.driver=="Yes":
                driver_charges=5000
            else:
                driver_charges=-5000
            if detail.Insurance =="Yes":
               insurance_charges=5000
            else:
                insurance_charges=-5000

            T_p=vehicle_charges+driver_charges+insurance_charges
            T_p2=int(detail.package.price)*int(detail.travelers)
            bill=[int(detail.package.price),vehicle_charges,driver_charges,insurance_charges,T_p,T_p2,detail.total_price,date.today(),detail.user_name,detail.user_phone,detail.user_email,detail.user_address,detail.booking_id]
        
            subject = 'Thank You for Your Booking !'
            html_message = render_to_string('Invoice.html',{"bill":bill})
            plain_message = strip_tags(html_message)
            from_email = 'Travel Partner <moorthimt15@gmail.com>'
            to = 'moorthiofficial02@gmail.com'
            send_mail(subject, plain_message, from_email, [to], html_message=html_message)
            
        
        
    return render(request,'success.html')


def Payment (request):
    if request.method=='POST':
        package_id=request.POST.get("pid")
        name=request.POST.get("name")
        email=request.POST.get("email")
        mobile=request.POST.get("mobile")
        proof=request.POST.get("proof")
        address=request.POST.get("address")
        state=request.POST.get("state")
        pincode=request.POST.get("pincode")
        traveler=request.POST.get("traveler")
        traveler_1=request.POST.get("traveler-1")
        traveler_2=request.POST.get("traveler-2")
        from_=request.POST.get("from")
        date_=request.POST.get("date")
        driver=request.POST.get("driver")
        vehicle=request.POST.get("vehicle")
        insurance=request.POST.get("insurance")
        bill_id=(random_bill(10))

        price=float(request.POST.get("Price"))

        vehicle_charges=0
        driver_charges=0
        insurance_charges=0
        total_price=0
        
        if vehicle =="Yes":
            vehicle_charges=5000
        else:
            vehicle_charges=-5000
        if driver=="Yes":
            driver_charges=5000
        else:
            driver_charges=-5000
        if insurance =="Yes":
               insurance_charges=5000
        else:
            insurance_charges=-5000
        total_price=int(price)*int(traveler)-5000+driver_charges+vehicle_charges+insurance_charges

        Booking.objects.create(user=request.user,booking_id=bill_id,package_id=package_id,user_name=name,user_email=email,user_phone=mobile,
                                   user_proof=proof,user_address=address,user_state=state,user_pin=pincode,travelers=traveler,
                                     traveler_1=traveler_1, traveler_2=traveler_2,starting_location=from_,starting_date=date_,
                                     driver=driver,vehicle=vehicle,total_price=total_price,Insurance=insurance)

        booking=[price,traveler,driver_charges,vehicle_charges,insurance_charges,total_price,bill_id]
            
        return render(request,'Payment.html',{"booking":booking})

def Mybooking(request):
    if request.user.is_authenticated:
        booking=Booking.objects.filter(user=request.user)
        guide=Guide.objects.all()
        for item in booking:
            guide=Guide.objects.filter(category=item.package.category)
        return render(request,'Mybooking.html',{"booking":booking,"guide":guide})
    else:
        return redirect("/Travel-Partner/login") 
    
def guideline(request):
    return render(request,'Guideline.html')
   
def cancelbooking(request,id):
   booking=Booking.objects.get(id=id)
   booking.delete()
   messages.success(request, 'Tour Cancelled successfully.')
   return redirect("/Travel-Partner/mybooking")
