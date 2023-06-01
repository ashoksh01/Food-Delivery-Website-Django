from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from accounts.auth import admin_only
from accounts.forms import ContactForm
from admins.forms import ProfileForm
from foods.models import *
from django.contrib.auth.models import User
from django.contrib import messages
from foods.models import Category, Food
from accounts.models import Contact

# ====================== Count Sections Admin Dashboard=================
@login_required(login_url='login')
@admin_only
def dashboard(request):
    category = Category.objects.all()
    category_count= category.count()
    food = Food.objects.all()
    food_count = food.count()
    order = Orderto.objects.all()
    order_count = order.count()

    user_count = User.objects.filter(is_staff=0).count()
    admin_count = User.objects.filter(is_staff=1).count()

    context = {
        'category_count': category_count,
        'food_count': food_count,
        'user_count':user_count,
        'admin_count':admin_count,
        'order_count': order_count,


    }

    return render(request, 'admins/dashboard.html', context)


# ============= Order Sections Admin Dashboard===============

@login_required(login_url='login')
@admin_only
def all_orders(request):
    orders = Orderto.objects.all().order_by('-id')
    context = {
        'orders':orders,


    }
    return render(request, 'admins/admins_order.html', context)

@login_required(login_url='login')
@admin_only
def update_order(request, order_id):
    order = Orderto.objects.get(id=order_id)
    order.status = "Delivered"
    order.save()
    messages.add_message(request, messages.SUCCESS, 'Order delivered')
    return redirect('/admins/all_orders')

@login_required(login_url='login')
@admin_only
def delete_order(request, order_id):
    order = Orderto.objects.get(id=order_id)
    order.delete()
    messages.add_message(request, messages.SUCCESS, 'Order deleted')
    return redirect('/admins/all_orders')



# ======== Show admins, user, contact form, payment in admin dashboard===================

@login_required(login_url='login')
@admin_only
def show_admins(request):
    admins = User.objects.filter(is_staff=1).order_by('-id')
    context = {
        'admins': admins,
        'activate_admins': 'active bg-primary'
    }
    return render(request, 'admins/show_admins.html', context)


@login_required(login_url='login')
@admin_only
def show_users(request):
    users = User.objects.filter(is_staff=0).order_by('-id')
    context = {
        'users': users,
        'activate_user': 'active bg-primary'
    }
    return render(request, 'admins/show_users.html', context)

@login_required(login_url='login')
@admin_only
def contact_form(request):
    contactform = Contact.objects.all()
    context = {
        'contact': contactform
    }
    return render(request, 'admins/show_contact_form.html', context)

@login_required(login_url='login')
@admin_only
def show_payment(request):
    payment = Orderto.objects.all().order_by('-id')
    context = {
        'payment':payment,
    }
    return render(request, 'admins/show_payment.html', context)

# ==============Promote Users========================

@login_required(login_url='login')
@admin_only
def promote_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, ' Admin Promoted')
    return redirect('/admins/show_admins')


# ==============Demote Admin========================

@login_required(login_url='login')
@admin_only
def demote_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = False
    user.save()
    messages.add_message(request, messages.SUCCESS, 'Admin Demoted')
    return redirect('/admins/show_users')


