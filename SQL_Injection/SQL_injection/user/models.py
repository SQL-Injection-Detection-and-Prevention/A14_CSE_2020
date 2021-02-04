from django.db import models

# Create your models here.
class RegisterModel(models.Model):
    firstname=models.CharField(max_length=300)
    lastname=models.CharField(max_length=200)
    userid=models.CharField(max_length=200)
    password = models.CharField(max_length=32)
    mblenum=models.BigIntegerField()
    email=models.EmailField(max_length=400)


class SQLModel(models.Model):

    attack_type = models.CharField(max_length=100)
    text = models.CharField(max_length=500)


class WebsiteModel(models.Model):
    txt=models.CharField(max_length=500)
    rest=models.CharField(max_length=200)
    usid=models.ForeignKey(RegisterModel)