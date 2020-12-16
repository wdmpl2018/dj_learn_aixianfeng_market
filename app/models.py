from django.db import models

# Create your models here.
class Main(models.Model):
    img = models.CharField(max_length=255)
    name = models.CharField(max_length=64)
    trackid = models.IntegerField(default=1)

    class Meta:
        abstract = True

class MainWheel(Main):

    class Meta:
        db_table = 'axf_wheel'

class MainNav(Main):

    class Meta:
        db_table = 'axf_nav'

class MainMustBuy(Main):

    class Meta:
        db_table  = 'axf_mustbuy'

class MainShop(Main):

    class Meta:
        db_table =  'axf_shop'


class MainShow(Main):
    categoryid = models.IntegerField(default=1)
    brandname = models.CharField(max_length=50)
    img1 = models.CharField(max_length=255)
    childcid1 = models.IntegerField(default=1)
    productid1 = models.IntegerField(default=1)
    longname1 =  models.CharField(max_length=128)
    price1  = models.FloatField(default=1)
    marketprice1 = models.FloatField(default=0)
    img2 = models.CharField(max_length=255)
    childcid2 = models.IntegerField(default=1)
    productid2 = models.IntegerField(default=1)
    longname2 =  models.CharField(max_length=128)
    price2  = models.FloatField(default=1)
    marketprice2 = models.FloatField(default=0)
    img3 = models.CharField(max_length=255)
    childcid3 = models.IntegerField(default=1)
    productid3 = models.IntegerField(default=1)
    longname3 =  models.CharField(max_length=128)
    price3  = models.FloatField(default=1)
    marketprice3 = models.FloatField(default=0)

    class Meta:
        db_table = 'axf_mainshow'


class FoodType(models.Model):

    typeid = models.IntegerField(default=1)
    typename = models.CharField(max_length=80)
    childtypenames = models.CharField(max_length=120)
    typesort = models.IntegerField(default=0)

    class Meta:
        db_table = 'axf_foodtype'

class Goods(models.Model):
    '''
    axf_goods(productid,productimg,productname,productlongname,
    isxf,pmdesc,specifics,price,marketprice,categoryid,childcid,
    childcidname,dealerid,storenums,productnum)
    '''
    productid = models.IntegerField(default=1)
    productimg = models.CharField(max_length=250)
    productname = models.CharField(max_length=50)
    productlongname = models.CharField(max_length=180)
    isxf = models.BooleanField(default=False)
    pmdesc = models.BooleanField(default=False)
    specifics = models.CharField(max_length=64)
    price = models.FloatField(default=0)
    marketprice =models.FloatField(default=1)
    categoryid = models.IntegerField(default=1)
    childcid = models.IntegerField(default=1)
    childcidname = models.CharField(max_length=120)
    dealerid = models.IntegerField(default=1)
    storenums = models.IntegerField(default=1)
    productnum = models.IntegerField(default=1)


    class Meta:
        db_table = 'axf_goods'