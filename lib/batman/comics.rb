class Batman::Comics

    #@@all = []
    @@all = ["a", "b", "c"]
    
    attr_accessor :comicname

    def initialize(comicname)
        @comicname = comicname
        save 
    end

    def self.all
        #Batman::ScraperForTitles.scrape_imdb_titles if @@all.empty?
        @@all 
    end

    def save 
        @@all << self
    end

end