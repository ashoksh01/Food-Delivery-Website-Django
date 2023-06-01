from django.urls import path
from . import views
from .views import successful
from django.contrib.auth import views as auth_views

urlpatterns = [

    # =============== login, register, logout path=============
    path('', views.homepage),
    path('login', views.login_user),
    path('register', views.register_user),
    path('logout', views.logout_user),

    # =============== Admin, User, contact path =============

    path('admins/user', views.get_user),
    path('admins/admins', views.get_admins),
    path('success', views.successful),
    path('contact', views.contact_form),

    # =============== Forget password path =============
    path('password_reset/', auth_views.PasswordResetView.as_view(template_name='accounts/password_reset_form.html'),
         name='password_reset'),
    path('password_reset/done/',
         auth_views.PasswordResetDoneView.as_view(template_name='accounts/password_reset_done.html'),
         name='password_reset_done'),
    path('reset/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(template_name='accounts/password_reset_confirm.html'),
         name='password_reset_confirm'),
    path('reset/done/',
         auth_views.PasswordResetCompleteView.as_view(template_name='accounts/password_reset_complete.html'),
         name='password_reset_complete'),

    # =============== User Profile path=============
    path('profile', views.profile),

]
