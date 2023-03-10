class MealsView
    def display_meals(meals)
        meals.each_with_index do |meal, index|
            puts "#{index + 1} - #{meal.name}: #{meal.price}"
        end
    end

    def ask_user_for(info)
        puts "Enter #{info} please:"
        return gets.chomp
    end
end