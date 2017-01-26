task :test_task => :environment do
  require 'roo'

  database = Roo::Excelx.new(Rails.root + 'lib/tasks/capstone_database-1-25-17v2.xlsx')
  # puts database.info

  #create categories
  category_sheet = database.sheet('categories')
  # puts category_sheet
  categories = []
  category_sheet.each(id: 'id', name: 'name') do |hash|
    categories << hash
  end
  categories.shift
  puts categories.inspect

  categories.each do |category|
    Category.create(name: category[:name])
  end

  #create recipes
  recipe_sheet = database.sheet('recipes')
  recipes = []
  recipe_sheet.each(id: 'id', name: 'name', category_name: 'category_name', source: 'source', image: 'image') do |hash|
    recipes << hash
  end
  puts recipes.inspect
  recipes.shift

  recipes.each do |recipe|
    category_id = Category.find_by(name: recipe[:category_name]).id
    new_recipe = Recipe.create(name: recipe[:name], source: recipe[:source], category_id: category_id)
    image = Image.create(recipe_id: new_recipe.id, url: recipe[:image])
  end

  #create directions
  direction_sheet = database.sheet('directions')
  # puts category_sheet
  directions = []
  direction_sheet.each(recipe_id: 'recipe_id', description: 'description', step_order: 'step_order') do |hash|
    directions << hash
  end
  directions.shift
  puts directions.inspect

  directions.each do |direction|
    Direction.create(recipe_id: direction[:recipe_id], description: direction[:description], step_order: direction[:step_order])
  end

  #create foods
  food_sheet = database.sheet('foods')
  # puts category_sheet
  foods = []
  food_sheet.each(id: 'id', name: 'name') do |hash|
    foods << hash
  end
  foods.shift
  puts foods.inspect

  foods.each do |food|
    new_food = Food.find_or_initialize_by(name: food[:name])
    new_food.save
  end

  #create ingredients
  ingredient_sheet = database.sheet('ingredients')
  # puts category_sheet

  ingredients = []
  ingredient_sheet.each(amount: 'amount', food_name: 'food_name', recipe_id: 'recipe_id') do |hash|
    ingredients << hash
  end
  puts ingredients.inspect
  ingredients.shift

  ingredients.each do |ingredient|
    food_id = Food.find_by(name: ingredient[:food_name]).id
    new_ingredients = Ingredient.create(amount: ingredient[:amount], food_id: food_id, recipe_id: ingredient[:recipe_id])
  end

end
