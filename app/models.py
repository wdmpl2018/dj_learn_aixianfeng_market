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


class AXFUser(models.Model):
    u_username = models.CharField(max_length=32, unique=True)
    u_password = models.CharField(max_length=256)
    u_email = models.CharField(max_length=64, unique=True)
    u_icon = models.ImageField(upload_to='icons/%Y/%m/%d/')
    is_active = models.BooleanField(default=False)
    is_delete = models.BooleanField(default=False)

    class Meta:
        db_table = 'axf_user'

class Cart(models.Model):

    c_user = models.ForeignKey(AXFUser)
    c_goods = models.ForeignKey(Goods)

    c_goods_num = models.IntegerField(default=1)
    c_is_select =  models.BooleanField(default=True)
    
    class Meta:
        db_table  = 'axf_cart'


class Order(models.Model):
     ##ORDER_STATUS
    ORDER_STATUS_NOT_PAY = 1   #已下单未付款
    ORDER_STATUS_NOT_SEND = 2   #已下单未付款
    ORDER_STATUS_NOT_RECEIVE = 3   #已下单未付款

    o_user = models.ForeignKey(AXFUser)
    o_price = models.FloatField(default=0)
    o_time = models.DateTimeField(auto_now=True)
    o_status = models.IntegerField(default=ORDER_STATUS_NOT_PAY)

    class Meta:
        db_table = 'axf_order'


class OrderGoods(models.Model):   

    o_order = models.ForeignKey(Order)
    o_goods = models.ForeignKey(Goods)
    o_good_num = models.IntegerField(default=1)

    class Meta:
        db_table = 'axf_ordergoods'