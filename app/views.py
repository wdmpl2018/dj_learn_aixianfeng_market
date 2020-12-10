from django.shortcuts import render
from django.http import HttpResponse
from app.models import MainWheel, MainNav, MainMustBuy, MainShop,MainShow

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

    return render(request, 'main/cart.html')

def market(request):

    return render(request, 'main/market.html')

def mine(request):

    return render(request, 'main/mine.html')