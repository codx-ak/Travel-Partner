from django.contrib.auth.forms import UserCreationForm
from .models import User
from django import forms


class CustomUserForm(UserCreationForm):
    username=forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','placeholder':'Enter Name','autocomplete':'off'}))
    email=forms.CharField(widget=forms.EmailInput(attrs={'class':'form-control','placeholder':'Enter Email','autocomplete':'off'}))
    password1=forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'Enter password','autocomplete':'off'}))
    password2=forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'Confirm password','autocomplete':'off'}))
    class Meta:
        model=User
        fields=['username','email','password1','password2']

