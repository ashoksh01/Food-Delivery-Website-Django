from django import forms
from django.forms import ModelForm

from admins.models import AdminProfile


class ProfileForm(ModelForm):
    class Meta:
        model = AdminProfile
        fields = '__all__'
        exclude = ['user', 'username','email', 'phone number', 'address']