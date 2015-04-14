from django.test import TestCase, Client
from django.contrib.auth.models import User
from cities_news.models import City, Article


# Create your tests here.
# still have to add test for pubisled articles

class OneToTestAllTest(TestCase):
    def setUp(self):
        
        u1 = User(username='user', password='werk')
        u2 = User(username='meneer', password='thisisapassword')
        u1.save()
        u2.save()
        
        c1 = City(title='Utrecht')
        c2 = City(title='Amsterdam')
        c3 = City(title='Eindhoven')
        c1.save()
        c2.save()
        c3.save()
        
        a1 = Article(title="article", text='text this is the text', author=u1)
        a2 = Article(title="this is article", text='text this is the text', author=u1)
        a3 = Article(title="this is article too", text='text this is the text', author=u1)
        a4 = Article(title="this is article is cool", text='text this is the text', author=u1)
        a5 = Article(title="this is article is not cool", text='text this is the text', author=u2)
        a6 = Article(title="this is article is a article", text='text this is the text', author=u2)
        a1.save()
        a2.save()
        a3.save()
        a4.save()
        a5.save()
        a6.save()
        a1.city.add(c1, c2, c3)
        a2.city.add(c1, c2, c3)
        a3.city.add(c1)
        a4.city.add(c1, c2)
        a5.city.add(c1, c2, c3)
        a6.city.add(c2)
        
        
    def test_get_all_article_from_u2(self):
        
        user2 = User.objects.filter(username='meneer')
        
        art1, art2 = Article.objects.filter(author=user2).order_by('created_date')[:2]
        
        exp_art1 = Article.objects.filter(title='this is article is not cool')[0]
        exp_art2 = Article.objects.filter(title='this is article is a article')[0]
        
        self.assertEqual(art1, exp_art1)
        self.assertEqual(art2, exp_art2)
        
        
    def test_url_to_city(self):
        c = Client()
        response = c.get('/amsterdam/')
        exp_title = "<title>De Vrije Student - Amsterdam</title>"
        result = response.content
        self.assertIn(exp_title, result)
        
        
    def test_url_to_city_with_uppercase_first_char(self):
        c = Client()
        response = c.get('/Utrecht/')
        exp_title = "<title>De Vrije Student - Utrecht</title>"
        result = response.content
        self.assertIn(exp_title, result)
    
        
    def test_url_to_city_without_trailing_slash(self):
        c = Client()
        response = c.get('/eindhoven')
        exp_title = "<title>De Vrije Student - Eindhoven</title>"
        result = response.content
        self.assertIn(exp_title, result)
    
    def test_false_url_to_city(self):
        c = Client()
        response = c.get('/amsterdamm/')
        self.assertEqual(response.status_code, 404)
        response = c.get('/amstterdam/')
        self.assertEqual(response.status_code, 404)
        response = c.get('/amam/')
        self.assertEqual(response.status_code, 404)
        response = c.get('/dam/')
        self.assertEqual(response.status_code, 404)
        response = c.get('/article/')
        self.assertEqual(response.status_code, 404)
        response = c.get('/article')
        self.assertEqual(response.status_code, 404)
        response = c.get('/this-is-article/')
        self.assertEqual(response.status_code, 404)
        response = c.get('/this-is-article')
        self.assertEqual(response.status_code, 404)
        
        
    def test_find_article_in_city1(self):
        c = Client()
        response = c.get('/amsterdam/article/')
        self.assertEqual(response.status_code, 200)
        response = c.get('/utrecht/article')
        self.assertEqual(response.status_code, 200)
        response = c.get('/eindhoven/article')
        self.assertEqual(response.status_code, 200)
        
    def test_article_in_the_right_cities(self):
        c = Client()
        response = c.get('/amsterdam/this-is-article-is-cool/')
        self.assertEqual(response.status_code, 200)
        response = c.get('/utrecht/this-is-article-is-cool')
        self.assertEqual(response.status_code, 200)
        response = c.get('/eindhoven/this-is-article-is-cool')
        self.assertEqual(response.status_code, 404)
        


class CitySaveTest(TestCase):
    def setUp(self):
        self.c1 = City(title='utrecht')
        self.c2 = City(title='Amsterdam')
        self.c1.save()
        self.c2.save()
        
    def test_city_title(self):
        exp_c1 = 'Utrecht'
        exp_c2 = 'Amsterdam'
        
        self.assertEqual(self.c1.title, exp_c1)
        self.assertEqual(self.c2.title, exp_c2)
        