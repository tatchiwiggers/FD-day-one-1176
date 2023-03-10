require_relative '../views/meals_view'

class MealsController
    def initialize(meal_repository)
        @meal_repository = meal_repository
        @meals_view = MealsView.new
    end

    def add
        # 1. ask user for name
        name = @meals_view.ask_user_for('name')
        # 2. asj user for price
        price = @meals_view.ask_user_for('price').to_i
        # 3. create a new meal obj
        meal = Meal.new(name: name, price: price)
        @meal_repository.create(meal)
        # 4. list
        list
    end

    def list
        meals = @meal_repository.all
        @meals_view.display_meals(meals)
    end
end