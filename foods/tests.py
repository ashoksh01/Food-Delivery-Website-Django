from django.test import TestCase
from django.test import TestCase, SimpleTestCase
from .models import Food, Category
from django.urls import reverse, resolve
from foods.views import homepage, menu, food_form
from django.test import TestCase, SimpleTestCase, Client


# ==================Test for model===============

class Testmodel(TestCase):
    def setUp(self):
        self.food_menu = Food.objects.create(
            food_name='Momo',
            food_price='200'
        )
        self.food_category = Category.objects.create(
            category_name='Pizza',
            category_description='It is tasty'
        )

    # ================== menu model===============
    def test_menu_model(self):
        self.assertEqual(self.food_menu.food_name, 'Momo')

    # ================== category model===============

    def test_category_model(self):
        self.assertEqual(self.food_category.category_name, 'Pizza')


# ==================Test for url homepage===============
class url_test(SimpleTestCase):
    def test_homepage(self):
        url = reverse('homepage')
        self.assertEqual(resolve(url).func, homepage)

    # ==================Test food form===============
    def test_food_form(self):
        url = reverse('food_form')
        self.assertEqual(resolve(url).func, food_form)

    # ==================Test for menu===============

    def test_menu(self):
        url = reverse('menu')
        self.assertEqual(resolve(url).func, menu)

    # ==================== Test View================

class TestViews(TestCase):
    def setUp(self):
        self.client = Client()
        self.get_category_user_url = reverse('show_category')
        self.get_food_user_url = reverse('show_food')

    def test_show_category_url(self):
        response = self.client.get(self.get_category_user_url)
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'foods/show_categories.html')

    def test_show_food_url(self):
        response = self.client.get(self.get_food_user_url)
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'foods/show_foods.html')
