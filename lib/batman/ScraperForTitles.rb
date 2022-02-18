class Batman::ScraperForTitles

    def self.scrape_imdb_titles

        
        doc = Nokogiri::HTML(URI.open("https://www.esquire.com/entertainment/movies/a38982310/batman-movies-in-order/"))
        title = doc.css("strong")
        
        title.each do |t|
            
            name = t.text

           Batman::Titles.new(name)

        end

        
        
    end
end