from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from.forms import LoginForm, ProfileForm
from accounts.auth import unauthenticated_user, user_only, admin_only
from django.contrib.auth.decorators import login_required
from .forms import CreateUserForm, ContactForm
from .models import Profile

# =============== Homepage account=============

def homepage(request):
    return render(request, 'accounts/homepage.html')

# =============== Logout User =============
@login_required
def logout_user(request):
    logout(request)
    return redirect('/login')

# =============== Login User =============

@unauthenticated_user
def login_user(request):
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            user = authenticate(request, username=data['username'],password=data['password'])
            print(user)
            if user is not None:
                if user.is_staff:
                    login(request, user)
                    return redirect('/admins/dashboard')

                elif not user.is_staff:
                    login(request, user)
                    return redirect('/foods/homepage')


            else:
                messages.add_message(request, messages.ERROR, "Invalid user credential")
                return render(request, 'accounts/login.html', {'form_login':form})




    context = {
        'form_login':LoginForm,
        'activate_login': 'active'
    }
    return render(request, 'accounts/login.html', context)


# =============== Register User =============
@unauthenticated_user
def register_user(request):
    if request.method =='POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()
            Profile.objects.create(user=user, username=user.username, email=user.email)
            messages.add_message(request, messages.SUCCESS, 'User register')
            return redirect('/login')
        else:
            messages.add_message(request, messages.ERROR, 'Unable to register user')
            return render(request, 'accounts/register.html', {'form_register':form})


    context = {
        'form_register':CreateUserForm,
        'activate_register': 'active'
    }
    return render(request, 'accounts/register.html', context)


# =============== get admin =============
@login_required
@admin_only
def get_admins(request):
    admins = User.objects.filter(is_staff=1).order_by('-id')
    context = {
        'admins': admins
    }
    return render(request, 'accounts/admins.html', context)

# =============== get User =============

@login_required
@admin_only
def get_user(request):
    users = User.objects.filter(is_staff=0).order_by('-id')
    context = {
        'users': users
    }
    return render(request, 'accounts/user.html', context)

# =============== Contact Form =============
def contact_form(request):
    context = {
        'form': ContactForm,
    }

    if request.method == "POST":
        form = ContactForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Contact form is added successfully')
            return redirect("/success")
        else:
            messages.add_message(request, messages.ERROR, 'Contact form is not added')

    return render(request, 'accounts/contact_form.html', context)



def successful(request):
    return render(request, 'accounts/success.html')

# =============== User Profile =============
@login_required
@user_only
def profile(request):
    profile = request.user.profile
    if request.method == "POST":
        form = ProfileForm(request.POST, request.FILES, instance=profile)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "Profile updated successfully")
            return redirect('/profile')
    context = {
        'form': ProfileForm(instance=profile),
        'activate_profile': 'active'
    }
    return render(request, 'accounts/profile.html', context)