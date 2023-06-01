from django import forms
from django.forms import ModelForm

from  .models import Category, Food, Orderto

class CategoryForm(ModelForm):
    class Meta:
        model = Category
        fields = "__all__"


class FoodForm(ModelForm):
    class Meta:
        model = Food
        fields = "__all__"


class OrderToForm(ModelForm):
    class Meta:
        model = Orderto
        fields = ['quantity', 'contact_no', 'contact_address', 'payment_method']





