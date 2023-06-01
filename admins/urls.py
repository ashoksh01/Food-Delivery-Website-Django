from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

# =============== Admin Dashboard Path=================

urlpatterns = [
    path('dashboard', views.dashboard),

    path('update_order/<int:order_id>', views.update_order),
    path('delete_order/<int:order_id>', views.delete_order),
    path('all_orders', views.all_orders),
    path('show_admins', views.show_admins),
    path('show_users', views.show_users),
    path('show_contact_form', views.contact_form),
    path('show_payment', views.show_payment),

    path('promote_admin/<int:user_id>', views.promote_user),
    path('demote_admin/<int:user_id>', views.demote_admin),


]
