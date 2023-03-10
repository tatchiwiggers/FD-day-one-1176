# TODO: implement the router of your app.
class Router
    def initialize(meals_controller)
        @meals_controller = meals_controller
        @running = true
    end

    def run
        # i wanna do somthing while my program is running
        while @running
            # what do i wanna do? - i wanna show to the user the interface options
            display_tasks
            choice = gets.chomp.to_i
            actions(choice)
        end
    end

    private

    def display_tasks
        puts "--------------------"
        puts "------- MENU -------"
        puts "--------------------"
        puts "1. Add new meal"
        puts "2. List all meals"
        puts "8. Exit"
        print "> "
    end

    def actions(choice)
        case choice
        when 1 then @meals_controller.add
        when 2 then @meals_controller.list
        when 8 then stop!
        else puts 'Try again...'
        end
    end

    def stop!
        @running = false
    end
end

# tatchi = Router.new('controller')
# p tatchi.run