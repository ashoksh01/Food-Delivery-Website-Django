from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.forms import ModelForm

from accounts.models import Contact
from .models import Profile


# =============== Login Form =============
class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput)


# =============== Create USer Form =============
class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


# =============== Contact Form =============
class ContactForm(ModelForm):
    class Meta:
        model = Contact
        fields = '__all__'


# =============== Profile Form =============
class ProfileForm(ModelForm):
    class Meta:
        model = Profile
        fields = '__all__'
        exclude = ['user', 'username', 'email', 'phone number', 'address']
