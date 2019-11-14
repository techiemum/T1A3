# this part will inform user for how to use the app . 


#     puts "Welcome to meal_planner app"
#         sleep (2)
#     puts "Please selct between Monday to Friday to see recipie of the day"
#         sleep (2)
#     puts "If you do not have ingridents available please write your ingridents in list"
#         sleep (2)
#     puts "check the price and place the order"
#         sleep (2)
#     puts "After placing your order app will give you total amount of the bill"
#         sleep (1)


#Meal planning area with recipes to display on each day of the week
#It will show day and name of the recipie , also will describe the method

class Meal_planner
    #no code in here :)
    def initialize
    end

    def monday
        output = <<-END
        Golden Roast Potatoes
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


def get_user_input
    puts "Options: "
    puts "monday"
    puts "tuesday"
    puts "wednesday"
    puts "thursday"
    puts "friday"
    puts "saturday"
    puts "sunday"
    puts "Select a day"
return gets.chomp
end

def do_options(class_instance)
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
end

planner = Meal_planner.new

do_options(planner)

