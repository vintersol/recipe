import psycopg2
from recipe import Recipe

class Postgres(object):

    def __init__(self):
        self.conn = psycopg2.connect('host=localhost dbname=recipes user=postgres password=postgres')
        self.cursor = self.conn.cursor()

    def __exit__(self, exc_type, exc_value, traceback):
        if self.conn is not None:
            self.conn.close()

        if self.cursor is not None:
            self.cursor.close()


    def store_recipes(self, recipes):
        for recipe in recipes:
            self.cursor.execute("INSERT INTO recipe(title, url, image_url, ingredients) VALUES (%s, %s, %s, %s)", (recipe.title, recipe.url, recipe.image_url, recipe.ingredients))

        self.conn.commit()
        
        
