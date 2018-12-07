from urllib.request import urlopen
from bs4 import BeautifulSoup
from selenium import webdriver
from recipe import Recipe
from repository import Postgres
import re

try:
    driver = webdriver.Chrome()

    driver.get('http://www.ica.se/recept/middag/')

    soup = BeautifulSoup(driver.page_source,'html.parser')

    recipes = soup.find_all('article', attrs={'class':'recipe'})

    stored_recipes = []

    for recipe in recipes:
        a_tag = recipe.find('a')
        title = a_tag['data-recipename']
        url = a_tag['href']
        ingredients = recipe.find('li', {"class": 'md_lte_hidden'}).find('span')['title'].split('\n')
        ingredients_string = ', '.join(ingredients)
        
        regex = re.compile('src="\/\/(.*.jpg)"')
        image_url = regex.search(str(a_tag), re.IGNORECASE).group(1)
        stored_recipes.append(Recipe(title, url, image_url, ingredients_string))

    Postgres().store_recipes(stored_recipes)

finally:
    if driver is not None:
        driver.quit()
