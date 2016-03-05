from django.shortcuts import render, get_object_or_404
from django.http import Http404
from .models import Article, City, Member, Position, Point
from itertools import chain
# Create your views here.


def index(request):
    return render(request, 'cities_news/kaart.html', {})


def city(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()
        
    city = get_object_or_404(City, title=city_name)
    try:
        latest_news = Article.objects.filter(city=city, published=True).order_by('-created_date')[:4]
    except:
        raise Http404("contact the webmaster")
    mensen = Member.objects.filter(city=city, published=True).order_by('title')[:8]
    #this is for postgres
    #mensen = Member.objects.filter(city=city, published=True).extra(select={'myinteger': "CAST(substring(title FROM '[0-9]+') AS INTEGER)"}).order_by('-myinteger')[:8]
    # mensen = list(chain(mens, mensen))
    try:
        first_news = Article.objects.filter(city=city, published=True).order_by('-created_date')[0]
    except:
        first_news = '';
    context = {'latest_news': latest_news, 'city': city, 'mensen': mensen, 'first_news': first_news}
    return render(request, 'cities_news/city.html', context)


def article(request, city_name, article_slug):
    if not city_name.isupper(): 
        city_name = city_name.title()

    if city_name == "Preview":
        article = get_object_or_404(Article, slug=article_slug)
    else:
        city = get_object_or_404(City, title=city_name)
        article = get_object_or_404(Article, slug=article_slug, city=city)
    
    context = {'article': article, 'city': city }
    return render(request, 'cities_news/article.html', context)


def contact(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()
        
    city = get_object_or_404(City, title=city_name)
    try:
        adres = city.hq_address.splitlines()[1]
    except:
        adres = '';
    context = {'city': city, 'adres': adres}
    return render(request, 'cities_news/contact.html', context)


def mensen(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()
   
    city = get_object_or_404(City, title=city_name)
    try:
        mensen = Member.objects.filter(city=city, published=True).order_by('title')
        #mensen = Member.objects.filter(city=city, published=True).exclude(title='Lijsttrekker').extra(select={'myinteger': "CAST(substring(title FROM '[0-9]+') AS INTEGER)"}).order_by('-myinteger')
        #mensen = list(chain(mens, mensen))  
    except:
        raise Http404("contact the webmaster")   
    
    context = {'city': city, 'mensen': mensen}
    return render(request, 'cities_news/mensen.html', context)


def nieuws(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()
        
    city = get_object_or_404(City, title=city_name)
    try:
        latest_news = Article.objects.filter(city=city, published=True).order_by('-created_date')
    except:
        raise Http404("contact the webmaster")
    
    context = {'latest_news': latest_news, 'city': city}
    return render(request, 'cities_news/nieuws.html', context)

def standpunten(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()

    city = get_object_or_404(City, title=city_name)
    standpunten = Position.objects.filter(city=city).order_by('number')

    context = {'city': city , 'standpunten': standpunten}
    return render(request, 'cities_news/standpunten.html', context)

def punten(request, city_name, punt_slug):
    if not city_name.isupper():
        city_name = city_name.title()

    city = get_object_or_404(City, title=city_name)
    punt = get_object_or_404(Point, slug=punt_slug)

    context = {'punt': punt, 'city': city }
    return render(request, 'cities_news/punt.html', context)
