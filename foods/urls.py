from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [

    # ====== category path==========

    path('homepage', views.homepage, name='homepage'),
    path('category_form', views.category_form),
    path('get_category', views.get_category),
    path('delete_category/<int:category_id>', views.delete_category),
    path('update_category/<int:category_id>', views.category_update_form),

    # ===================Foods Path====================

    path('food_form', views.food_form , name='food_form'),
    path('get_food', views.get_food),
    path('delete_food/<int:food_id>', views.delete_food),
    path('update_food/<int:food_id>', views.food_update_form),

    path('get_category_user', views.show_categories, name='show_category'),
    path('get_food_user', views.show_foods, name='show_food'),
    path('menu', views.menu, name='menu'),

    # ================ Order Path=====================

    path('order_now/<int:food_id>', views.order_now),
    path('order_now', views.show_order_items),
    path('remove_order_item/<int:order_id>', views.remove_order_item),
    path('order_form/<int:food_id>/<int:order_id>', views.order_form),
    path('my_order', views.my_order),

    path('esewa_verify', views.esewa_verify),

    # ======= user password change path============

    path('password_change/', auth_views.PasswordChangeView.as_view(template_name='foods/password_change.html')),
    path('password_change_done/',
         auth_views.PasswordResetDoneView.as_view(template_name='foods/password_change_done.html'),
         name='password_change_done'),

]
