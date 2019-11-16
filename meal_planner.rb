require "colorize"
require "tty-box"

# this part will inform user for how to use the app . 


    puts "Welcome to meal_planner app".yellow
        sleep (2)
    puts "Please selct between Monday to Friday to see recipie of the day".light_blue
        sleep (2)
    puts "If you do not have ingridents available please write your ingridents in list".light_red
        sleep (2)
    puts "check the price and place the order".blue
        sleep (2)
    puts "After placing your order app will give you total amount of the bill".red
        sleep (1)

 puts "----------------------------------------------------------------------------------------------------------------------------------------------"
 puts "----------------------------------------------------------------------------------------------------------------------------------------------"
        sleep (4)

def get_user_input
    puts "Options:".colorize(:color => :light_blue, :background => :red)
    puts "monday"
    puts "tuesday"
    puts "wednesday"
    puts "thursday"
    puts "friday"
    puts "saturday"
    puts "sunday"
    puts "Select a day".red
return gets.chomp
end

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
    puts "this is not correct input please enter day"
end


def create_list
    print "What is the list name? "
    name = gets.chomp
    
    hash = { "name" => name, "items" => Array.new }
    return hash
  end

  $total_price = 0

def add_to_total(price)
    $total_price += price
end
  
  # add out of stock items
  def add_list_item
    print "What is the item you'd like to add? "
    item_name = gets.chomp
    
    
    print "what is the price ? "
    price = gets.chomp.to_i
    add_to_total(price)
     
    hash = { "name" => item_name, "price" => price }
    return hash
  end

  
  # print seprator
  def print_separator(character="-")
    puts character * 140
  end
  
  # print list
  def print_list(list)
    puts "List: #{list['name']}"
    print_separator()
    list["items"].each do |item|
      puts "\tItem: " + item['name'] + "\t\t\t" + 
           "price: " +item["price"].to_s
    end
    print_separator()
  end


    #Meal planning area with recipes to display on each day of the week
    #It will show day and name of the recipie , also will describe the method

class Meal_planner

    attr_reader :stocklist 
    attr_writer :get_user_input, :do_options

    def initialize
        @stocklist = {
            "potato" => "$4", "olive_oil" => "$6", "garlic" => "$3", "lemon" => "$1", "salmon" => "$4",
            "sweet_chilli_sauce" => "$9", "ginger" => "$2", "onion" => "$4", "lamb" => "$12", "rosemary" => "$3",
                "chicken_stock" => "$5", "ricotta" => "$4", "eggs" => "$1", "parmesan" => "$5",
            "thyme" => "$1", "celery" => "$3", "egg_mayonnaise" => "$3", "bread" => "$4", "chicken_thighs" => "$20",
            "pasta_sauce" => "$5", "black_olives" => "$3", "chicken_breast" => "$15", "peanut_butter" => "$4", "cream" => "$4",
        }
    end

    def monday
        puts "Golden Roast Potatoes".blue.on_red.blink
        output = <<-END
        Wash the potatoes and pop them in a large saucepan.Bring to a boil. Cover and reduce heat.
        Simmer for 15 to 20 minutes, or until tender when tested with a skewer.Place over medium heat for 2 minutes to dry the potatoes.preheat oven to 200°C.
        Roast for 45 minutes, or until crispy, flipping them after 20 to 25 minutes.Pop the garlic from its skin, season with sea salt and cracked pepper, and serve sprinkled with lemon zest.
        END
    end
    
    def tuesday     
        output = <<-END
         Thai Baked Salmon
         Preheat oven 180ºC Line a baking tray with baking paper.Place each fillet onto the tray and brush with sweet chilli sauce
         Sprinkle with ginger, brushing into the sauce.Turn and coat the underside, flip back. Season with cracked pepper
         Bake for 10 minutes, remove and brush with more marinade. Bake 10 minutes."
        END
    end     

    def wednesday
        output = <<-END
        Slow Cooked Lamb with Onions & Rosemary
        Slow Cooked Lamb with Onions & Rosemary,slowcook lamb and add seasalt and cracked pepper.
        Remove the leaves from rosemary sprigs and scatter around the lamb. Add the onions and chicken stock.
        cook on low for 6 to 8 hours, at which point, the lamb should be tender.Serve the lamb on a platter with the onions and drizzle with delicious melty onion sauce.
        END
    end

    def thursday
        output = <<-END
        Keto Baked Ricotta Pie
        Preheat the oven to 180°C.Line a 20cm cake tin with baking paper.
        Place all ingredients into a large bowl and season with sea salt and cracked pepper.
        Whisk with a fork until well combined.Pour the mixture to the tin and bake until golden brown, 25 to 30 minutes.
        Cool slightly before slicing to serve.
        END
    end
   
    def friday
        output = <<-END
        Aussie Sandwich
        Mash hard boiled eggs in a bowl.
        Add celery and mayonnaise and combine well.
        Spread on bread to form a sandwich.
        END
    end

    def saturday
        output = <<-END
        Chicken Cacciatore
        Preheat oven to 160°C.Place the chicken, pasta sauce, and olives in a 20 x 30cm casserole.
        Season with cracked black pepper and most of the thyme.
        Cover and cook until the chicken is thoroughly cooked and tender, about 2 hours.
        Sprinkle with remaining thyme.
        END
    end

    def sunday
        output = <<-END
        Satay Chicken
        In a non-stick frying pan over medium heat, sauté the curry paste for 30 seconds.
        Add the chicken and toss to coat.Add the peanut butter and stir.
        Reduce the heat, add cream, stirring to combine.
        Simmer for 12 to 15 minutes allowing time for the delicious flavours to develop.
        END
    end
end



puts "----------------------------------------------------------------------------------------------------------------------------------------------"
puts "----------------------------------------------------------------------------------------------------------------------------------------------"


planner = Meal_planner.new
do_options(planner)
#display the kitchen inventory list
sleep(2)
 
puts ""
puts ""
    # inventory.each do |name|
    # end

    # puts inventory.join(" ")
   
    box = TTY::Box.frame(width: 30, height: 10) do
        "This is a kitchen inventory list. please go through it and check what item is out of stock"
      end

      print box
    puts ""
    puts ""
     

    # puts #{Meal_planner.kitchen_inventory}"

   
      sleep(2)
    #   kitchen_inventory.each do |key, value|
    #     "#{key}: #{value}"
    # end
    kitchen_inventory = Meal_planner.new
    # puts kitchen_inventory
    # box = TTY::Box.frame "Drawing a box in", "terminal emulator", padding: 3, align: :center
    #     print box
        
    for key , value in kitchen_inventory.stocklist
        puts  "#{key}: #{value}"
    end

    puts "----------------------------------------------------------------------------------------------------------------------------------------------"
    puts "----------------------------------------------------------------------------------------------------------------------------------------------"

 # create/name list for out of stock kitchen inventory
  

  
  list = create_list()
  puts "Now, let's add items to your list!"
  
  said_yes = "yes"
  
  while said_yes == "yes" do
    list["items"].push(add_list_item)
    puts "Would you like to add another item to the list? (enter 'yes' or 'no')"
    said_yes = gets.chomp.downcase
  end
  
  puts "Here's your list:\n"
  print_list(list)
  puts "         The Total price of the order is : $ #{$total_price}"
  File.write('list_new.txt', list)
    


