class Recipe(object):
    def __init__(self, title, url, image_url, ingredients, cooking_time):
        self.title = title
        self.url = url
        self.image_url = image_url
        self.ingredients = ingredients
        self.cooking_time = cooking_time
