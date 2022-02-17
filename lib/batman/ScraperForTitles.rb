class Batman::ScraperForTitles

    def self.scrape_imdb_titles

        
        doc = Nokogiri::HTML(URI.open("https://www.esquire.com/entertainment/movies/a38982310/batman-movies-in-order/"))
        title = doc.css("strong")

        title.each do |t|
            
            name = t.text
            
            
            
            #one = name.split
            #two = one.delete("Joker")
            #two = one.join(" ")
            #three = two
            
            
            
           Batman::Titles.new(name)

           
            

            #two = one.drop(1)
            #three = two.join(" ")
            #two = one.join(" ")
            #three = two.delete
        end

        #site = "https://www.imdb.com/list/ls009170651/?sort=list_order,asc&st_dt=&mode=simple&page=1&ref_=ttls_vw_smp"
        #doc = Nokogiri::HTML(URI.open(site))
        #things = doc.css("div.col-title")
        #puts things.text

        #doc = Nokogiri::HTML(URI.open("https://www.imdb.com/list/ls009170651/?sort=list_order,asc&st_dt=&mode=simple&page=1&ref_=ttls_vw_smp"))
        #title = doc.css("div.col-title")

        #puts title.text.split

        #title.each do |t|
        #    name = t.text
        #    one = name.split
        #    two = one.drop(1)
        #    three = two.join(" ")
            #two = one.join(" ")
            #three = two.delete
            
        #   Batman::Titles.new(three)
        #end
        
    end
end