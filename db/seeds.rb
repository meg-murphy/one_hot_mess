# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



recipe_category = RecipeCategory.new(name: "Vegetarian")
recipe_category.save

recipe = Recipe.new(name: "Sweet Potato Quinoa Cakes with Blackberry Salsa",
description: "A fall favorite",
recipe_category_id: recipe_category.id)
recipe.save

image = Image.new(url: "https://s-media-cache-ak0.pinimg.com/564x/bf/82/a8/bf82a8eea9c377b43e7b4466ed711c3e.jpg", recipe_id: recipe.id)
image.save


direction = Direction.new(recipe_id: recipe.id,
description: "Heat a large skillet over medium-low heat and add 1/2 tablespoons olive oil",
step_order: 1)
direction.save

direction2 = Direction.new(recipe_id: recipe.id,
description: "Add in sweet potato, onion, 1/4 teaspoon of salt and 1/4 teaspoon of pepper, stir, cover and cook for 10-12 minutes, or until potato is soft.",
step_order: 2)
direction2.save

food = Food.new(name: "sweet potato")
food.save

ingredient = Ingredient.new(amount: "1 medium",
food_id: food.id,
recipe_id: recipe.id)
ingredient.save

food2 = Food.new(name: "red onion")
food2.save

ingredient2 = Ingredient.new(amount: "1/2 diced",
food_id: food2.id,
recipe_id: recipe.id)
ingredient2.save
