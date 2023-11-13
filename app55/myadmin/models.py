from django.db import models


# Create your models here.
class categroy(models.Model):
    catid=models.AutoField(primary_key=True)
    catname=models.CharField(max_length=50)
    caticonname=models.CharField(max_length=100)


class Subcategroy(models.Model):
    subcatid=models.AutoField(primary_key=True)
    catname=models.CharField(max_length=50)
    subcatname=models.CharField(max_length=50,unique=True)
    subcaticonname=models.CharField(max_length=100)    


class products(models.Model):
    prodid=models.AutoField(primary_key=True)
    title=models.CharField(max_length=50)
    subcatname=models.CharField(max_length=50)
    description=models.CharField(max_length=500)
    ldate=models.CharField(max_length=10)
    edate=models.CharField(max_length=10)
    info=models.CharField(max_length=50)
