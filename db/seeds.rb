# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
user_type = UserType.find_or_initialize_by(name: "Admin")
user_type.save

user_type = UserType.find_or_initialize_by(name: "User")
user_type.save

user = User.find_or_initialize_by(name: "Meghan", phone_number: "8052088160", user_type_id: user_type.id)
user.save


category = Category.find_or_initialize_by(name: "Sides")
category.save


recipe = Recipe.find_or_initialize_by(name: "Sweet Potato Quinoa Cakes with Blackberry Salsa",
                    source: "http://www.howsweeteats.com/2012/05/sweet-potato-quinoa-cakes-with-blackberry-salsa/",
                    category_id: category.id)
recipe.save


image = Image.find_or_initialize_by(url: "http://i.imgur.com/BqhOVWm.jpg", recipe_id: recipe.id)
image.save


direction = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Heat a large skillet over medium-low heat and add 1/2 tablespoons olive oil",
                          step_order: 1)
direction.save

direction2 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Add in sweet potato, onion, 1/4 teaspoon of salt and 1/4 teaspoon of pepper, stir, cover and cook
                          for 10-12 minutes, or until potato is soft",
                          step_order: 2)
direction2.save

direction3 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Remove lid and add garlic, cooking for 30 seconds",
                          step_order: 3)
direction3.save

direction4 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Transfer potato mixture to a large bowl (slightly mashing potato with a fork) and add quinoa, breadcrumbs, cheese, herbs, remaining salt
                           and pepper and mix well. Once combined, add in egg, then mix until moistened",
                          step_order: 4)
direction4.save

direction5 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Using your hands to bring it together, form four equally-sized patties",
                          step_order: 5)
direction5.save

direction6 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Heat the same skillet over medium heat and add olive oil and add cakes, cooking 3-4 minutes per side,
                          or until golden brown",
                          step_order: 6)
direction6.save



food = Food.find_or_initialize_by(name: "sweet potato")
food.save

ingredient = Ingredient.find_or_initialize_by(amount: "1 medium",
                          food_id: food.id,
                          recipe_id: recipe.id)
ingredient.save

food2 = Food.find_or_initialize_by(name: "red onion")
food2.save

ingredient2 = Ingredient.find_or_initialize_by(amount: "1/2 diced",
                            food_id: food2.id,
                            recipe_id: recipe.id)
ingredient2.save

food3 = Food.find_or_initialize_by(name: "salt & pepper")
food3.save

ingredient3 = Ingredient.find_or_initialize_by(food_id: food3.id,
recipe_id: recipe.id)
ingredient3.save

food4 = Food.find_or_initialize_by(name: "garlic")
food4.save

ingredient4 = Ingredient.find_or_initialize_by(amount: "2 cloves, minced",
                            food_id: food4.id,
                            recipe_id: recipe.id)
ingredient4.save

food5 = Food.find_or_initialize_by(name: "olive oil")
food5.save

ingredient5 = Ingredient.find_or_initialize_by(food_id: food5.id,
                            recipe_id: recipe.id)
ingredient5.save

food6 = Food.find_or_initialize_by(name: "quinoa")
food6.save

ingredient6 = Ingredient.find_or_initialize_by(amount: "1/2 cup cooked",
                            food_id: food6.id,
                            recipe_id: recipe.id)
ingredient6.save


food7 = Food.find_or_initialize_by(name: "whole wheat bread crumbs")
food7.save

ingredient7 = Ingredient.find_or_initialize_by(amount: "1/4 cup",
                            food_id: food7.id,
                            recipe_id: recipe.id)
ingredient7.save

food8 = Food.find_or_initialize_by(name: "parmesan cheese")
food8.save

ingredient8 = Ingredient.find_or_initialize_by(amount: "1/4 cup finely grated",
                            food_id: food8.id,
                            recipe_id: recipe.id)
ingredient8.save

food9 = Food.find_or_initialize_by(name: "cilantro")
food9.save

ingredient9 = Ingredient.find_or_initialize_by(amount: "2 tablespoons chopped fresh",
                            food_id: food9.id,
                            recipe_id: recipe.id)
ingredient9.save

food10 = Food.find_or_initialize_by(name: "basil")
food10.save

ingredient10 = Ingredient.find_or_initialize_by(amount: "2 tablespoons chopped fresh",
                              food_id: food10.id,
                              recipe_id: recipe.id)
ingredient10.save

food11 = Food.find_or_initialize_by(name: "egg")
food11.save

ingredient11 = Ingredient.find_or_initialize_by(amount: "1 large",
                              food_id: food11.id,
                              recipe_id: recipe.id)
ingredient11.save


############
############

category = Category.find_or_initialize_by(name: "Soups")
category.save


recipe = Recipe.find_or_initialize_by(name: "Moroccan Lamb Meatball & Couscous Soup",
                    source: "http://blog.williams-sonoma.com/moroccan-lamb-meatball-couscous-soup/",
                    category_id: category.id)
recipe.save


image = Image.find_or_initialize_by(url: "http://i.imgur.com/YQ9Bus7.jpg", recipe_id: recipe.id)
image.save


direction = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Preheat the oven to 375ºF and oil a baking sheet",
                          step_order: 1)
direction.save

direction2 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Combine the coriander, cumin, curry powder, oregano, thyme, mustard, chili powder, and cinnamon, and
                          then stir in 1/2 teaspoon salt",
                          step_order: 2)
direction2.save

direction3 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Add the lamb and tomato paste and mix to combine with your hands",
                          step_order: 3)
direction3.save

direction4 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                            description: "For each meatball, scoop up 1 teaspoon of the lamb mixture, form into a meatball, and place on the
                            prepared pan and bake until the meatballs are cooked through (about 10 minutes)",
                            step_order: 4)
direction4.save

direction5 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "In a small saucepan, bring 1 1/4 cups water to a boil over high heat and add the couscous and reduce
                          the heat to low, cover, and cook until all the liquid is absorbed (8-10 minutes)",
                          step_order: 5)
direction5.save

direction6 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "In a large pot, warm the oil over medium-high heat and add the shallots and garlic; saute for 1 minute and add the broth and bring
                          to a boil",
                          step_order: 6)
direction6.save

direction7 = Direction.find_or_initialize_by(recipe_id: recipe.id,
                          description: "Remove from the heat and stir in the mint and season with salt and pepper",
                          step_order: 7)
direction7.save


food = Food.find_or_initialize_by(name: "ground coriander")
food.save
ingredient = Ingredient.find_or_initialize_by(amount: "1 tsp.",
                                              food_id: food.id,
                                              recipe_id: recipe.id)
ingredient.save

food2 = Food.find_or_initialize_by(name: "ground cumin")
food2.save
ingredient2 = Ingredient.find_or_initialize_by(amount: "1 tsp.",
                                                food_id: food2.id,
                                                recipe_id: recipe.id)
ingredient2.save

food3 = Food.find_or_initialize_by(name: "salt & pepper")
food3.save
ingredient3 = Ingredient.find_or_initialize_by(food_id: food3.id,
                                                recipe_id: recipe.id)
ingredient3.save

food4 = Food.find_or_initialize_by(name: "garlic")
food4.save
ingredient4 = Ingredient.find_or_initialize_by(amount: "5 cloves, minced",
                                                food_id: food4.id,
                                                recipe_id: recipe.id)
ingredient4.save

food5 = Food.find_or_initialize_by(name: "olive oil")
food5.save
ingredient5 = Ingredient.find_or_initialize_by(amount:"3 Tbs.",
                                              food_id: food5.id,
                                              recipe_id: recipe.id)
ingredient5.save

food6 = Food.find_or_initialize_by(name: "curry powder")
food6.save
ingredient6 = Ingredient.find_or_initialize_by(amount: "1/4 tsp.",
                                              food_id: food6.id,
                                              recipe_id: recipe.id)
ingredient6.save


food7 = Food.find_or_initialize_by(name: "dried oregano")
food7.save
ingredient7 = Ingredient.find_or_initialize_by(amount: "1/4 tsp.",
                                              food_id: food7.id,
                                              recipe_id: recipe.id)
ingredient7.save

food8 = Food.find_or_initialize_by(name: "dried thyme")
food8.save
ingredient8 = Ingredient.find_or_initialize_by(amount: "1/4 tsp.",
                                              food_id: food8.id,
                                              recipe_id: recipe.id)
ingredient8.save

food9 = Food.find_or_initialize_by(name: "dry mustard")
food9.save
ingredient9 = Ingredient.find_or_initialize_by(amount: "1/8 tsp.",
                                              food_id: food9.id,
                                              recipe_id: recipe.id)
ingredient9.save

food10 = Food.find_or_initialize_by(name: "chili powder")
food10.save
ingredient10 = Ingredient.find_or_initialize_by(amount: "1/8 tsp.",
                                                food_id: food10.id,
                                                recipe_id: recipe.id)
ingredient10.save

food11 = Food.find_or_initialize_by(name: "cinnamon")
food11.save
ingredient11 = Ingredient.find_or_initialize_by(amount: "pinch of",
                                                food_id: food11.id,
                                                recipe_id: recipe.id)
ingredient11.save

food12 = Food.find_or_initialize_by(name: "ground lamb")
food12.save
ingredient12 = Ingredient.find_or_initialize_by(amount: "1 lb.",
                                                food_id: food12.id,
                                                recipe_id: recipe.id)
ingredient12.save

food13 = Food.find_or_initialize_by(name: "tomato paste")
food13.save
ingredient13 = Ingredient.find_or_initialize_by(amount: "2 Tbs.",
                                                food_id: food13.id,
                                                recipe_id: recipe.id)
ingredient13.save

food14 = Food.find_or_initialize_by(name: "Israeli couscous")
food14.save
ingredient14 = Ingredient.find_or_initialize_by(amount: "1 cup",
                                                food_id: food14.id,
                                                recipe_id: recipe.id)
ingredient14.save

food15 = Food.find_or_initialize_by(name: "shallots")
food15.save
ingredient15 = Ingredient.find_or_initialize_by(amount: "2 minced",
                                                food_id: food15.id,
                                                recipe_id: recipe.id)
ingredient15.save

food16 = Food.find_or_initialize_by(name: "chicken broth")
food16.save
ingredient16 = Ingredient.find_or_initialize_by(amount: "3 cups",
                                                food_id: food16.id,
                                                recipe_id: recipe.id)
ingredient16.save

food17 = Food.find_or_initialize_by(name: "chopped mint")
food17.save
ingredient17 = Ingredient.find_or_initialize_by(amount: "1 Tbs.",
                                                food_id: food17.id,
                                                recipe_id: recipe.id)
ingredient17.save


###############

category = Category.find_or_initialize_by(name: "Entrées")
category.save

recipe = Recipe.find_or_initialize_by(name: "Beet Crust Pizza",
                    source: "http://www.bakersroyale.com/beet-crust-pizza/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/CMWO9hO.jpg", recipe_id: recipe.id)
image.save


###############

category = Category.find_or_initialize_by(name: "Entrées")
category.save

recipe = Recipe.find_or_initialize_by(name: "Vegan Buddha Bowl",
                    source: "http://wellandfull.com/2016/02/the-vegan-buddha-bowl/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/GcaUmq6.jpg", recipe_id: recipe.id)
image.save


###############

category = Category.find_or_initialize_by(name: "Soups")
category.save

recipe = Recipe.find_or_initialize_by(name: "Caramelized Pork Ramen Noodle Soup with Curry Roasted Acorn Squash",
                    source: "http://www.halfbakedharvest.com/crockpot-crispy-caramelized-pork-ramen-noodle-soup-wcurry-roasted-acorn-squash/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/32g5ZCd.jpg", recipe_id: recipe.id)
image.save

###############

category = Category.find_or_initialize_by(name: "Entrées")
category.save

recipe = Recipe.find_or_initialize_by(name: "Butternut Squash Carbonara with Fried Sage & Caramelized Onions",
                    source: "http://katieatthekitchendoor.com/2014/03/01/butternut-squash-carbonara-with-fried-sage-and-caramelized-onions/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/rF5BDIk.jpg", recipe_id: recipe.id)
image.save

###############

category = Category.find_or_initialize_by(name: "Salads")
category.save

recipe = Recipe.find_or_initialize_by(name: "Heirloom Tomato, Beet and Burrata Salad",
                    source: "http://www.feastingathome.com/heirloom-tomato-beet-and-burrata-salad/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/4MpIYV9.jpg", recipe_id: recipe.id)
image.save

###############

category = Category.find_or_initialize_by(name: "Soups")
category.save

recipe = Recipe.find_or_initialize_by(name: "Carrot Autumn Squash Soup",
                    source: "http://www.theglowingfridge.com/cleansing-carrot-autumn-squash-soup/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/mLgoUmx.jpg", recipe_id: recipe.id)
image.save

###############

category = Category.find_or_initialize_by(name: "Salad")
category.save

recipe = Recipe.find_or_initialize_by(name: "Orange Avocado Salad with Lime Dressing",
                    source: "http://ciaoflorentina.com/orange-avocado-salad-recipe-lime-dressing/",
                    category_id: category.id)
recipe.save

image = Image.find_or_initialize_by(url: "http://i.imgur.com/DXJ3jIe.jpg", recipe_id: recipe.id)
image.save
