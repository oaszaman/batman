require 'pry'


class Batman::CLI
    @@mag="\e[3;35m"
    @@white="\e[0m"
    

    def greeting
        puts "\n#{@@mag}Welcome to the Batman Portal! \nHere you will find out which comics were adapted into live action Batman movies.#{@@white}\n"
        puts "\n"
         list_of_movie_names
         show_user_movie
         get_user_answer_for_movie
    end

    #all the movies i want to display in the terminal and something that easily identifies them (year, director)
    #maybe scrape or just list it
    def list_of_movie_names
        @batmanmovies = ["Batman (1966)", "Batman (1989)", "Batman Returns (1992)", "Batman Forever (1995)", "Batman & Robin (1997)", "Batman Begins (2005)", "The Dark Knight (2008)", "The Dark Knight Rises (2012)" ]
    end

    #shows second prompt and movie names
    def show_user_movie
        puts "\nChoose the NUMBER beside the movie name that you will like to select."
        @batmanmovies.each.with_index(1) { |movie, index| 
        puts "#{index}. #{movie}."}
            
    end

    def get_user_answer_for_movie
        chosen_batman_movie = gets.strip.to_i
        show_comics_for(chosen_batman_movie)

    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_comics_for(chosen_batman_movie)
        #work on once scraped
        batmanmovies = @batmanmovies[chosen_batman_movie - 1]
        puts "\n#{@@mag}Here are the comics that made it into #{batmanmovies}#{@@white}"
        #binding.pry
    end
end
