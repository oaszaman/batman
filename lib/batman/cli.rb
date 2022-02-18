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
         second_prompt
         
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

        #### problem ######
        

    end


    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end

    def show_comics_for(chosen_batman_movie)  
        
        batmanmovies = @batmanmovies[chosen_batman_movie - 1] 
        puts "\n#{@@mag}Here are the comics that inspired the plot of #{batmanmovies.titlename}#{@@white}"
        puts "\n"
        prompt_answer(chosen_batman_movie)
        

    end

    def prompt_answer(chosen_batman_movie)
        if chosen_batman_movie == 1
            puts list_comics_for_optionone
        elsif chosen_batman_movie == 2
            puts  Batman::Comics1989.all
        elsif chosen_batman_movie == 3
            puts Batman::Comics1992.all
        elsif chosen_batman_movie == 4
            puts Batman::Comics1995.all
        elsif chosen_batman_movie == 5
            puts Batman::Comics1997.all
        elsif chosen_batman_movie == 6
            puts Batman::Comics2005.all
        elsif chosen_batman_movie == 7
            puts Batman::Comics2008.all
        elsif chosen_batman_movie == 8
            puts Batman::Comics2012.all
        end
    end

#######################################################################


    def list_comics_for_optionone
        @optionone = Batman::Comics1966.all

        show_user_comics_for_optionone
    end

    def show_user_comics_for_optionone
        

        puts "\n"
        @optionone.each.with_index(1) { |comic, index| 
        puts "#{index}. #{comic}" }
        puts "\n"

    end

    def second_prompt
        puts "\n#{@@mag}If you would like to know more about the comics, press the corresponding number with the comic.#{@@white}\n"

        #list_comics_for_optionone
       # show_user_comics_for_optionone

    end

    def get_user_answer_for_comic

    end



    

    
    
    
end
