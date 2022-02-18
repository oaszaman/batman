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
         #option_one
         
         
    end
    
    def list_of_movie_names

        @batmanmovies = Batman::Titles.all
       # @batmanmovies = ["Batman (1966)", "Batman (1989)", "Batman Returns (1992)", "Batman Forever (1995)", "Batman & Robin (1997)", "Batman Begins (2005)", "The Dark Knight (2008)", "The Dark Knight Rises (2012)" ]

    end

    #shows second prompt and movie names
    def show_user_movie
        puts "\n"
        @batmanmovies.each.with_index(1) { |movie, index| 
        puts "#{index}. #{movie.titlename}" if index < 9 }
        puts "\n"  
        
        #puts "\n#{@@brownishred}Choose the NUMBER beside the movie name that you will like to select.#{@@white}\n"
        
    end

    def get_user_answer_for_movie
        puts "\n#{@@brownishred}Choose the NUMBER beside the movie name that you will like to select.#{@@white}\n"
        chosen_batman_movie = gets.strip.to_i 
        show_comics_for(chosen_batman_movie)

        if chosen_batman_movie == 1
            puts Batman::Comics.all
            
        elsif chosen_batman_movie == 2
            puts "
            The Dark Knight Returns*
            Batman: Strange Apparitions
            The Golden Age Batman
            Batman #1
            Batman #213
            Detective Comics #553
            Batman #321 & Detective Comics #62
            Batman #408"
        else puts "need some more "
        end
        

    end



    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end


    def show_comics_for(chosen_batman_movie)  
        
        batmanmovies = @batmanmovies[chosen_batman_movie - 1] 
        puts "\n#{@@mag}Here are the comics that inspired the plot of #{batmanmovies.titlename}#{@@white}"
        
        
    end

    def option_one
        
    end

    
end
