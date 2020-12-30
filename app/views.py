from django.shortcuts import render,reverse,redirect
from django.http import HttpResponse, JsonResponse
from app.models import MainWheel, MainNav, MainMustBuy, MainShop,MainShow,FoodType,Goods, AXFUser, Cart,Order,OrderGoods
from .views_helper import *
from django.contrib.auth.hashers import make_password, check_password
from axf.settings import MEDIA_KEY_PREFIX
# Create your views here.

def home(request):
    main_wheels = MainWheel.objects.all()

    main_navs = MainNav.objects.all()

    main_must_buys = MainMustBuy.objects.all()

    main_shops = MainShop.objects.all()
    main_shop0_1 = main_shops[0:1]
    main_shop1_3 = main_shops[1:3]
    # main_shop0_1 = main_shops.get(id=1)
    main_shop3_7 = main_shops[3:7]
    main_shop7_11 = main_shops[7:11]

    main_shows = MainShow.objects.all()

    data = {
        'title': '首页',
        'main_wheels': main_wheels,
        'main_navs': main_navs,
        'main_must_buys': main_must_buys,
        'main_shop0_1': main_shop0_1,
        'main_shop1_3': main_shop1_3,
        'main_shop3_7': main_shop3_7,
        'main_shop7_11': main_shop7_11,
        'main_shows': main_shows,
    }
    return render(request, 'main/home.html', context=data)

def cart(request):

    carts = Cart.objects.filter(c_user=request.user)

    is_all_select = not carts.filter(c_is_select=False).exists()
    
    data = {
        'title': '购物车',
        'carts': carts,
        'is_all_select': is_all_select,
        'total_price': get_total_price()
    }
    return render(request, 'main/cart.html', context=data)

def market(request):    
    return redirect(reverse('axf:market_with_params', kwargs={
        "typeid": 104749,
        "childcid": 0,
        "order_rule": 0,
    }) )


def market_with_params(request, typeid,childcid, order_rule):

    ALL_TYPE = "0"
    ORDER_TOTAL = '0'
    ORDER_PRICE_UP = '1'
    ORDER_PRICE_DOWN = '2'
    ORDER_SALE_UP = '3'
    ORDER_SALE_DOWN = '4'

    foodtypes = FoodType.objects.all()
    goods_list = Goods.objects.filter(categoryid=typeid)

    if childcid != ALL_TYPE:        
        goods_list = goods_list.filter(childcid=childcid)

    if order_rule == ORDER_TOTAL:
        pass
    elif order_rule == ORDER_PRICE_UP:
        goods_list = goods_list.order_by('price')
    elif order_rule == ORDER_PRICE_DOWN:
        goods_list = goods_list.order_by('-price')
    elif order_rule == ORDER_SALE_UP:
        goods_list = goods_list.order_by('productnum')
    elif order_rule == ORDER_SALE_DOWN:
        goods_list = goods_list.order_by('-productnum')

    foodtype = foodtypes.get(typeid=typeid)
    foodtypechildnames = foodtype.childtypenames
    foodtypechildname_list = foodtypechildnames.split('#')
    foodtype_childname_list = []
    for foodtypechildname in foodtypechildname_list:
        foodtype_childname_list.append(foodtypechildname.split(':'))
    
    order_rule_list = [
        ['综合排序',  '0'],
        ['价格升序',  '1'],
        ['价格降序',  '2'],
        ['销量升序',  '3'],
        ['销量降序',  '4'],
    ]
    data = {
        'title': '闪购',
        'foodtypes': foodtypes,
        'goods_list': goods_list,
        'typeid': int(typeid),
        'foodtype_childname_list': foodtype_childname_list,
        'childcid': childcid,
        'order_rule_list': order_rule_list,
        'order_rule': order_rule,
    }
    return render(request, 'main/market.html', context=data)

def mine(request):

    user_id = request.session.get('user_id')

    data = {
        'title': '我的',
        'is_login': False,
    }

    if user_id:
        user = AXFUser.objects.get(pk=user_id)
        data['username'] = user.u_username
        data['icon'] = MEDIA_KEY_PREFIX + user.u_icon.url
        data['is_login'] = True
        data["order_not_pay"] = Order.objects.filter(o_user=user).filter(o_status=1).count()
        # data["order_not_receive"] = Order.objects.filter(o_user=user).filter(o_status=3).count()
        data["order_not_receive"] = Order.objects.filter(o_user=user).filter(o_status__in=[2,3]).count()

    return render(request, 'main/mine.html', context=data)


def register(request):
    if request.method == 'GET':
        data = {
            'title': '注册',
        }
        return render(request, 'user/register.html', context=data)
    
    elif request.method == 'POST':
        username = request.POST.get('username')
        email =request.POST.get('email')
        password = request.POST.get('password')
        
        icon = request.FILES.get('icon')

        # 自建加密函数
        # password = hash_str(password)

        # 使用django自带的加密方法 , 自带的带时间散列，每次的值都会不一样;
        # 使用check_password() 方法进行校验
        password = make_password(password)

        user = AXFUser()
        user.u_username = username
        user.u_email = email
        user.u_password = password
        user.u_icon = icon

        user.save()
        return HttpResponse('注册成功')


def login(request):
    if request.method == 'GET':
        data = {
            'title': '登录',
        }
        return render(request, 'user/login.html', context=data)

    elif request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        

        users = AXFUser.objects.filter(u_username=username)

        if users.exists():
            user = users.first()

            if check_password(password, user.u_password ):
                request.session['user_id'] = user.id
                return redirect(reverse('axf:mine'))
            else:
                return redirect(reverse('axf:login'))
        '''
        #自己乱写的校验逻辑
        # usernamedb = AXFUser.objects.get(u_username=username)
        # print(usernamedb.u_username)
        # if usernamedb != usernamedb.u_username:
        #     return HttpResponse('用户名不存在，请注册')
        
        # passworddb = AXFUser.objects.get(u_password=password)

        # if password != passworddb:
        #     return HttpResponse('密码有误，请重新登录')
        '''
        # return HttpResponse('登录成功%s' % username)
        return redirect(reverse('axf:login'))


def check_user(request):

    HTTP_USER_EXIST = 901
    username = request.GET.get('username')

    users = AXFUser.objects.filter(u_username=username)

    data = {
        'status': 200,
        'msg': 'user can use'
    }
    if users.exists():
        data['status'] = HTTP_USER_EXIST
        data['msg'] = 'user already exist'
    else:
        pass
    return JsonResponse(data=data)

def logout(request):

    request.session.flush()

    return redirect(reverse('axf:mine'))


def add_to_cart(request):

    goodsid = request.GET.get('goodsid')

    # user_id = request.session.get('user_id')
    # if user_id:        
    #     return HttpResponse('add goods succes')
    # # print(request.user)
    # else:
    #     # return redirect(reverse('axf:login'))  #会输出HTML原码内容， 因为是通过Ajax请求的。
    #     data = {
    #         'status': 302,
    #         'msg': 'not login',
    #     }
    #     return JsonResponse(data)

    carts = Cart.objects.filter(c_user=request.user).filter(c_goods_id=goodsid)

    if carts.exists():
        cart_obj = carts.first()
        cart_obj.c_goods_num = cart_obj.c_goods_num + 1

    else:
        cart_obj = Cart()
        cart_obj.c_goods_id = goodsid
        cart_obj.c_user = request.user

    cart_obj.save()

    data = {
        'status': 200,
        'msg': 'add goods success',
        'c_goods_num': cart_obj.c_goods_num,
    }

    return JsonResponse(data=data)

def change_cart_state(request):

    cartid = request.GET.get('cartid')
    cart_obj = Cart.objects.get(pk=cartid)

    cart_obj.c_is_select = not cart_obj.c_is_select
    cart_obj.save()

    is_all_select = not Cart.objects.filter(c_user=request.user).filter(c_is_select=False).exists()
    data = {
        'status': 200,
        'msg': 'change ok',
        'c_is_select': cart_obj.c_is_select,
        'is_all_select': is_all_select,
        'total_price': get_total_price(),
    }

    return JsonResponse(data=data)


def sub_shopping(request):

    cartid = request.GET.get('cartid')
    cart_obj = Cart.objects.get(pk=cartid)

    data = {
        'status': 200,
        'msg': "ok",       
    }
    if cart_obj.c_goods_num>1:
        cart_obj.c_goods_num = cart_obj.c_goods_num - 1
        cart_obj.save()
        data["c_goods_num"] = cart_obj.c_goods_num
    else:
        cart_obj.delete()
        data["c_goods_num"] = 0

    data['total_price'] = get_total_price()
    return JsonResponse(data=data)

def all_select(request):

    cart_list = request.GET.get('cart_list')
    cart_list = cart_list.split("#")

    carts = Cart.objects.filter(id__in=cart_list)
    
    for cart_obj in carts:
        cart_obj.c_is_select = not cart_obj.c_is_select
        cart_obj.save()

    data = {
        'status': 200,
        'msg': 'OK',
        'total_price': get_total_price()
    }

    return JsonResponse(data=data)


def make_order(request):

    carts = Cart.objects.filter(c_user=request.user).filter(c_is_select=True)

    order = Order()
    order.o_user = request.user
    order.o_price = get_total_price()
    order.save()

    for cart_obj in carts:
        ordergoods = OrderGoods()
        ordergoods.o_order = order
        ordergoods.o_goods_num = cart_obj.c_goods_num
        ordergoods.o_goods = cart_obj.c_goods
        ordergoods.save()
        cart_obj.delete()

    data ={
        'status': 200,
        'msg':'ok',
        'order_id': order.id
    }
    return JsonResponse(data=data)


def order_detail(request):
    
    order_id = request.GET.get('orderid')

    order = Order.objects.get(pk=order_id)

    data = {
        'title': '订单详情',
        'order': order
    }
    return render(request, 'order/order_detail.html', context=data)


def order_list_not_pay(request):

    orders = Order.objects.filter(o_user=request.user)

    data = {
        'title': '未支付订单详情',
        'orders': orders,
    }
    return render(request, 'order/order_list_not_pay.html',context=data)