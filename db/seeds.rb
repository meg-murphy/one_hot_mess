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
description: "Heat a large skillet over medium-low heat and add 1/2 tablespoons olive oil.",
step_order: 1)
direction.save

direction2 = Direction.new(recipe_id: recipe.id,
description: "Add in sweet potato, onion, 1/4 teaspoon of salt and 1/4 teaspoon of pepper, stir, cover and cook for 10-12 minutes, or until potato is soft.",
step_order: 2)
direction2.save

direction3 = Direction.new(recipe_id: recipe.id,
description: "Remove lid and add garlic, cooking for 30 seconds.",
step_order: 3)
direction3.save

direction4 = Direction.new(recipe_id: recipe.id,
description: "Transfer potato mixture to a large bowl (slightly mashing potato with a fork) and add quinoa, breadcrumbs, cheese, herbs, remaining salt
 and pepper and mix well. Once combined, add in egg, then mix until moistened.",
step_order: 4)
direction4.save

direction5 = Direction.new(recipe_id: recipe.id,
description: "Using your hands to bring it together, form four equally-sized patties.",
step_order: 5)
direction5.save

direction6 = Direction.new(recipe_id: recipe.id,
description: "UHeat the same skillet over medium heat and add olive oil. Add cakes and cook for 3-4 minutes per side, or until golden brown. Serve with blackberry salsa!",
step_order: 6)
direction6.save



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

food3 = Food.new(name: "salt & pepper")
food3.save

ingredient3 = Ingredient.new(food_id: food3.id,
recipe_id: recipe.id)
ingredient3.save

food4 = Food.new(name: "garlic")
food4.save

ingredient4 = Ingredient.new(amount: "2 cloves, minced",
food_id: food4.id,
recipe_id: recipe.id)
ingredient4.save

food5 = Food.new(name: "olive oil")
food5.save

ingredient5 = Ingredient.new(food_id: food5.id,
recipe_id: recipe.id)
ingredient5.save

food6 = Food.new(name: "quinoa")
food6.save

ingredient6 = Ingredient.new(amount: "1/2 cup cooked",
food_id: food6.id,
recipe_id: recipe.id)
ingredient6.save


food7 = Food.new(name: "whole wheat bread crumbs")
food7.save

ingredient7 = Ingredient.new(amount: "1/4 cup",
food_id: food7.id,
recipe_id: recipe.id)
ingredient7.save

food8 = Food.new(name: "parmesan cheese")
food8.save

ingredient8 = Ingredient.new(amount: "1/4 cup finely grated",
food_id: food8.id,
recipe_id: recipe.id)
ingredient8.save

food9 = Food.new(name: "cilantro")
food9.save

ingredient9 = Ingredient.new(amount: "2 tablespoons chopped fresh",
food_id: food9.id,
recipe_id: recipe.id)
ingredient9.save

food10 = Food.new(name: "basil")
food10.save

ingredient10 = Ingredient.new(amount: "2 tablespoons chopped fresh",
food_id: food10.id,
recipe_id: recipe.id)
ingredient10.save

food11 = Food.new(name: "egg")
food11.save

ingredient11 = Ingredient.new(amount: "1 large",
food_id: food11.id,
recipe_id: recipe.id)
ingredient11.save

user_type = UserType.new(name: "Admin")
user_type.save

user = User.new(name: "Meghan", phone_number: "8052088160", user_type: user_type.id)
user.save
