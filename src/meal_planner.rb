# Gems has been used for the application
require "colorize"
require "tty-box"

# Guide user with instructions for how to use the application


    puts "WELCOME TO MEAL PLANNER APPLICATION".yellow
        sleep (2)
    puts "Please selct between Monday to Friday to see recipie of the day".light_blue
        sleep (2)
    puts "Add your out of stock items to kitchen inventory list".light_red
        sleep (2)
    puts "Check the price and place the order".blue
        sleep (2)
    puts "After placing your order application will give you total amount of the bill".red
            sleep (1)

    puts "----------------------------------------------------------------------------------------------------------------------------------------------".black
            sleep (1)

# User input will be asked ,days will display in different colors  

    def get_user_input
        puts "OPTIONS:".colorize(:color => :light_blue, :background => :red)
        puts "monday".blue
        puts "tuesday".yellow
        puts "wednesday".blue
        puts "thursday".yellow
        puts "friday".blue
        puts "saturday".yellow
        puts "sunday".blue
        puts "Select a day".red
    return gets.chomp
    end

# User's input will be connected to recipie , error handling if user do not choose days given

    def do_options(class_instance)
        begin
        case get_user_input()
        when "monday"
            puts class_instance.monday
        when "tuesday"
            puts class_instance.tuesday
        when "wednesday"
            puts class_instance.wednesday
        when "thursday"
            puts class_instance.thursday
        when "friday"
            puts class_instance.friday
        when "saturday"
            puts class_instance.saturday
        when "sunday"
            puts class_instance.sunday
        else
            puts "please selct the day"
        end
        rescue
        puts "this is not correct input please enter day".red
        end 
    end


# Create array for item names and price for kitchen inventory

    def create_list
        puts "--------------------------------------".black
        print "What is the list name? ".colorize(:color => :magenta, :background => :white)
        name = gets.chomp
        puts "--------------------------------------".black

        hash = { "name" => name, "items" => Array.new }
        return hash
    end

# Total price set as 0
    $total_price = 0

# Add total order price

    def add_to_total(price)
        $total_price += price
    end
  
# Add out of stock items to list

    def add_list_item
        puts "--------------------------------------".black

        print "What is the item you'd like to add?  " .colorize(:color => :magenta, :background => :white)
        item_name = gets.chomp
        puts "--------------------------------------".black
        
        print "what is the price ?  ".colorize(:color => :magenta, :background => :white)
        price = gets.chomp.to_i
        add_to_total(price)
        puts "--------------------------------------".black
        hash = { "name" => item_name, "price" => price }
        return hash
    end

  
#  Print seprator

    def print_separator(character="-")
        puts character * 140
    end

  
#  Print list

    def print_list(list)
        puts "List: #{list['name']}".light_red
        print_separator()
        list["items"].each do |item|
        puts "\tItem: " + item['name'] + "\t\t\t" +
             "price: " +item["price"].to_s
        end
        print_separator()
    end


# Meal planning , recipes to display on each day of the week
# It will show day and name of the recipie , also will describe the method

class Meal_planner

    attr_reader :stocklist 
    attr_writer :get_user_input, :do_options

    def initialize
        @stocklist = {
            "potato".blue => "$4".yellow, "olive_oil" => "$6".red, "garlic".blue => "$3".yellow, "lemon" => "$1".red, "salmon".blue => "$4".yellow,
            "sweet_chilli_sauce" => "$9".red, "ginger".blue => "$2".yellow, "onion" => "$4".red, "lamb".blue => "$12".yellow, "rosemary" => "$3".red,
                "chicken_stock".blue => "$5".yellow, "ricotta" => "$4".red, "eggs".blue=> "$1".yellow, "parmesan" => "$5".red,
            "thyme".blue => "$1".yellow, "celery" => "$3".red, "egg_mayonnaise".blue => "$3".yellow, "bread" => "$4".red, "chicken_thighs".blue => "$20".yellow,
            "pasta_sauce" => "$5".red, "black_olives".blue => "$3".yellow, "chicken_breast" => "$15".red, "peanut_butter".blue => "$4".yellow, "cream" => "$4".red
        }
    end

    def monday
        puts "Golden Roast Potatoes".center(38) 
        output = <<-END
        Wash the potatoes and pop them in a large saucepan.Bring to a boil. Cover and reduce heat.
        Simmer for 15 to 20 minutes, or until tender when tested with a skewer.
        Place over medium heat for 2 minutes to dry the potatoes.preheat oven to 200°C.
        Roast for 45 minutes, or until crispy, flipping them after 20 to 25 minutes.Pop the garlic from its skin,
        season with sea salt and cracked pepper, and serve sprinkled with lemon zest.
        END
    end
    
    def tuesday     
        puts "Thai Baked Salmon".center(38) 
        output = <<-END
        Preheat oven 180ºC Line a baking tray with baking paper.Place each fillet onto the tray
        and brush with sweet chilli sauce Sprinkle with ginger, brushing into the sauce.
        Turn and coat the underside, flip back. Season with cracked pepper. Bake for 10 minutes, 
        remove and brush with more marinade. Bake 10 minutes.
        END
    end     

    def wednesday
        puts "Slow Cooked Lamb with Onions & Rosemary".center(38) 
        output = <<-END
        Slow Cooked Lamb with Onions & Rosemary,slowcook lamb and add seasalt and cracked pepper.
        Remove the leaves from rosemary sprigs and scatter around the lamb. 
        Add the onions and chicken stock.cook on low for 6 to 8 hours, at which point, the lamb should be tender.
        Serve the lamb on a platter with the onions and drizzle with delicious melty onion sauce.
        END
    end

    def thursday
        puts "Keto Baked Ricotta Pie".center(38) 
        output = <<-END
        Preheat the oven to 180°C.Line a 20cm cake tin with baking paper.
        Place all ingredients into a large bowl and season with sea salt and cracked pepper.
        Whisk with a fork until well combined.Pour the mixture to the tin and bake until golden brown, 25 to 30 minutes.
        Cool slightly before slicing to serve.
        END
    end
   
    def friday
        puts "Aussie Sandwich".center(38) 
        output = <<-END
        Mash hard boiled eggs in a bowl.
        Add celery and mayonnaise and combine well.
        Spread on bread to form a sandwich.
        END
    end

    def saturday
        puts "Chicken Cacciatore".center(38) 
        output = <<-END
        Preheat oven to 160°C.Place the chicken, pasta sauce, and olives in a 20 x 30cm casserole.
        Season with cracked black pepper and most of the thyme.
        Cover and cook until the chicken is thoroughly cooked and tender, about 2 hours.
        Sprinkle with remaining thyme.
        END
    end

    def sunday
        puts "Satay Chicken".center(38) 
        output = <<-END
        In a non-stick frying pan over medium heat, sauté the curry paste for 30 seconds.
        Add the chicken and toss to coat.Add the peanut butter and stir.
        Reduce the heat, add cream, stirring to combine.
        Simmer for 12 to 15 minutes allowing time for the delicious flavours to develop.
        END
    end

end



    planner = Meal_planner.new
    do_options(planner)
    sleep(1)

    puts "----------------------------------------------------------------------------------------------------------------------------------------------".black
    puts "----------------------------------------------------------------------------------------------------------------------------------------------".black
 

#gem will create and print box for kitchen inventory list

    box = TTY::Box.frame(width: 60, height: 3) do
        "This is a kitchen inventory list. please go through it and check what item is out of stock".green
      end

    print box
      
    sleep(1)
   
    kitchen_inventory = Meal_planner.new
    puts "--------------------------------------".black
 
# Display kitech inventory with item name and price

    for key , value in kitchen_inventory.stocklist
        puts  "#{key}: #{value}"
    end

    puts "----------------------------------------------------------------------------------------------------------------------------------------------".black
    puts "----------------------------------------------------------------------------------------------------------------------------------------------".black


# Create/name list for out of stock kitchen inventory
  
 
    list = create_list()
    puts "Now, let's add items to your list!".yellow
    
    said_yes = "yes"

# Loop for whether adding more items or not
  
    while said_yes == "yes" do
        list["items"].push(add_list_item)
        puts "Would you like to add another item to the list? (enter 'yes' or 'no')".red
        said_yes = gets.chomp.downcase
        puts "--------------------------------------".black

    end
  
# Display the list and total order amount
    puts "Here's your list:\n".magenta
    print_list(list)
    puts "              TOTAL AMOUNT OF THE ORDER IS : $ #{$total_price}".colorize(:color => :magenta, :background => :white)
    puts "--------------------------------------------------------------------------------------------------------------------------------------------".yellow
# Create text file for the items orderd

    File.write('list_new.txt', list)
    


