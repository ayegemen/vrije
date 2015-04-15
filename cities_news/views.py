from django.shortcuts import render, get_object_or_404
from django.http import Http404
from .models import Article, City, Mensen
# Create your views here.


def index(request):
    return render(request, 'cities_news/index.html', {})


def city(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()
        
    city = get_object_or_404(City, title=city_name)
    try:
        latest_news = Article.objects.filter(city=city, published=True).order_by('-created_date')[:3]
    except:
        raise Http404("contact the webmaster")
    
    mensen = Mensen.objects.order_by('-name')[:6]

    context = {'latest_news': latest_news, 'city': city, 'mensen': mensen}
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
    context = {'city': city}
    return render(request, 'cities_news/contact.html', context)


def mensen(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()

    try:
        mensen = Mensen.objects.all()
    except:
        raise Http404("contact the webmaster")   
    
    city = get_object_or_404(City, title=city_name)
    context = {'city': city, 'mensen': mensen}
    return render(request, 'cities_news/mensen.html', context)


def nieuws(request, city_name):
    if not city_name.isupper(): 
        city_name = city_name.title()
        
    city = get_object_or_404(City, title=city_name)
    try:
        latest_news = Article.objects.filter(city=city, published=True).order_by('-created_date')[:3]
    except:
        raise Http404("contact the webmaster")
    
    context = {'latest_news': latest_news, 'city': city}
    return render(request, 'cities_news/nieuws.html', context)


def standpunten(request):
    return render(request, 'cities_news/standpunten.html', {})
