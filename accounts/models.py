from django.db import models
from django.contrib.auth.models import User
# ================ Contact Models=============
class Contact(models.Model):
    Name=models.CharField(max_length=100)
    email = models.EmailField()
    subject = models.CharField(max_length=255)
    message = models.TextField()

    def __str__(self):
        return self.email
# ========================= User Profile models ===============
class Profile(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    username =  models.CharField(max_length=100)
    email = models.EmailField()
    firstname =  models.CharField(max_length=50)
    lastname = models.CharField(max_length=50)
    phone = models.CharField(max_length=10)
    profile_pic = models.FileField(upload_to='static/profile', default='static/sampleprofile.png')
    created_date = models.DateTimeField(auto_now_add=True)
