require 'pry'


class Batman::CLI
    @@mag="\e[3;35m"
    

    def greeting
        puts "\n#{@@mag}Welcome to the Batman Portal! \nHere you will find out which comics were adapted into live action movies.\n"
        puts "\n"
         list_of_movie_names
         get_user_movie
    end

    #all the movies i want to display in the terminal and something that easily identifies them (year, director)
    #maybe scrape or just list it
    def list_of_movie_names
        @batmanmovies = ["Batman Forever", "Batman Begins"]
    end

    def get_user_movie
        @batmanmovies.each.with_index(1) { |movie, index| 
        puts "#{index}. #{movie}."}
            
    end
end
