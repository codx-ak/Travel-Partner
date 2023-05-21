from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Category(models.Model):
    name=models.CharField(max_length=150,null=False,blank=False)
    image=models.ImageField(upload_to='Travel_Category',null=True,blank=True)
    description=models.TextField(max_length=500,null=False,blank=False)
    status=models.BooleanField(default=False,help_text="0-show,1-Hidden")
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

class Package(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    package_name=models.CharField(max_length=150,null=False,blank=False)
    package_image=models.ImageField(upload_to='Travel_Package',null=False,blank=False)
    package_duration=models.IntegerField(null=False,blank=False)
    package_size=models.IntegerField(null=False,blank=False)
    package_rating=models.IntegerField(null=False,blank=False)
    package_age=models.CharField(max_length=50,null=False,blank=False)
    package_map=models.CharField(max_length=600,null=False,blank=False)
    package_location=models.CharField(max_length=150,blank=False,null=False)
    package_vehicle=models.CharField(max_length=150,blank=False,null=False)
    price=models.FloatField(max_length=100,null=False,blank=False)
    status=models.BooleanField(default=False,help_text="0-show,1-Hidden")
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.package_name

class Blog(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    blog_name=models.CharField(max_length=150,null=False,blank=False)
    blog_image=models.ImageField(upload_to='Travel_Blogs')
    blog_description=models.TextField(max_length=500,null=False,blank=False)
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.blog_name

class Gallery(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    gallery_image1=models.ImageField(upload_to='Travel_Gallery')
    gallery_image2=models.ImageField(upload_to='Travel_Gallery')
    gallery_image3=models.ImageField(upload_to='Travel_Gallery')
    gallery_image4=models.ImageField(upload_to='Travel_Gallery')
    gallery_image5=models.ImageField(upload_to='Travel_Gallery')
    gallery_image6=models.ImageField(upload_to='Travel_Gallery')
    gallery_image7=models.ImageField(upload_to='Travel_Gallery')
    gallery_image8=models.ImageField(upload_to='Travel_Gallery')

class Booking(models.Model):
    package=models.ForeignKey(Package,on_delete=models.CASCADE)
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    booking_id=models.CharField(max_length=150,blank=True,null=True)
    user_name=models.CharField(max_length=100,null=False,blank=False)
    user_email=models.EmailField(max_length=100,null=False,blank=False)
    user_phone=models.CharField(max_length=15,null=False,blank=False)
    user_proof=models.FileField(upload_to='Travel_Booking',null=False,blank=False)
    user_address=models.CharField(max_length=150,null=False,blank=False)
    user_state=models.CharField(max_length=150,null=False,blank=False)
    user_pin=models.CharField(max_length=20,null=False,blank=False)

    travelers=models.IntegerField(blank=False,null=False)
    traveler_1=models.IntegerField(blank=False,null=False)
    traveler_2=models.IntegerField(blank=False,null=False)
    starting_location=models.CharField(max_length=150,null=False,blank=False)
    starting_date=models.DateField(blank=False,null=False)
    driver=models.CharField(max_length=10,blank=False,null=False)
    vehicle=models.CharField(max_length=10,blank=False,null=False)
    Insurance=models.CharField(max_length=10,blank=False,null=False)

    total_price=models.IntegerField(blank=False,null=False)
    payment_option=models.CharField(max_length=150,null=True,blank=True)
    payment_status=models.CharField(max_length=50,null=True,blank=True)
    status=models.BooleanField(default=False,help_text="0-pending,1-confirm")
    created_at=models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.user_name
  
class Guide(models.Model):
    
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    
    avatar=models.ImageField(upload_to='Travel_Guide')
    name=models.CharField(max_length=100,null=False,blank=False)
    age=models.CharField(max_length=100,null=False,blank=False)
    email=models.CharField(max_length=100,null=False,blank=False)
    mobile=models.CharField(max_length=100,null=False,blank=False)
    city=models.CharField(max_length=100,null=False,blank=False)
    experience=models.CharField(max_length=100,null=False,blank=False)

    def __str__(self):
        return self.name
    
class Review(models.Model):
    avatar=models.ImageField(upload_to='Travel_Reviews')
    name=models.CharField(max_length=50,blank=False,null=False)
    rating=models.CharField(max_length=50,blank=False,null=False)
    comment=models.TextField(max_length=200,blank=False,null=False)
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

class Contact(models.Model):
    name=models.CharField(max_length=150,blank=False,null=False)
    email=models.EmailField(max_length=150,blank=False,null=False)
    msg=models.TextField(max_length=200,blank=False,null=False)
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name