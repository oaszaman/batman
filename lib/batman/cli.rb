require 'pry'


class Batman::CLI
    @@mag="\e[3;35m"
    @@white="\e[0m"
    @@brownishred="\e[1;31m"
    

    def greeting
        puts "\n#{@@mag}Welcome to the Batman Portal! \nHere you will find out which comics inspired the live action Batman movies.#{@@white}\n"
        
         list_of_movie_names
         show_user_movie
         get_user_answer_for_movie
        # show_user_description

    end
    
    #gets the list of movies from scraper
    def list_of_movie_names

        @batmanmovies = Batman::Titles.all

    end

    #lists movies 1-8 with correct index
    def show_user_movie
        puts "\n"
        @batmanmovies.each.with_index(1) { |movie, index| 
        puts "#{index}. #{movie.titlename}" if index < 9 }
        puts "\n"  
        
    end

    #shows second prompt and movie names, also gets answer from
    #user.
    def get_user_answer_for_movie
        puts "\n#{@@brownishred}Choose the NUMBER beside the movie name that you will like to select.#{@@white}\n"
        chosen_batman_movie = gets.strip.to_i 
        show_comics_for(chosen_batman_movie)

        
    end


    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end


    def show_comics_for(chosen_batman_movie)  
        
        batmanmovies = @batmanmovies[chosen_batman_movie - 1] 
        puts "\n#{@@mag}Here are the comics that inspired the plot of #{batmanmovies.titlename}#{@@white}"
        #PROBLEM !!! make index be shows here instead of under
        #second prompt 
        #if chosen_batman_movie == 1
       #     puts @optionone = Batman::Comics1966.all 
       # @optionone.each.with_index(1) { |comic, index| 
       # puts "#{index}. #{comic}" }
       # puts "\n"
       # else puts "need some more "
       # end
        
        
    end

    #def show_user_description
    #    puts "\n#{@@mag}Press the corresponding NUMBER to learn more about the comic.#{@@white}\n "
        #@optionone = Batman::Comics1966.all 
        #@optionone.each.with_index(1) { |comic, index| 
       # puts "#{index}. #{comic}" }
       # puts "\n"

    #end

   # def chosen_number_for(batman_comic)
        #chosen_batman_movie = gets.strip.to_i 
        #show_comics_for(chosen_batman_movie)

    #    chosen_comic = gets.strip.to_i



    #end
    
    
end
