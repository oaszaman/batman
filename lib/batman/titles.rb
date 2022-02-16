class Batman::Titles
    #@@all = ["Batman (1966)", "Batman (1989)", "Batman Returns (1992)", "Batman Forever (1995)", "Batman & Robin (1997)", "Batman Begins (2005)", "The Dark Knight (2008)", "The Dark Knight Rises (2012)" ]
    @@all = []
    
    attr_accessor :titlename

    def initialize(titlename)
        @titlename = titlename
        #@@all << self 
        save
    end

    def self.all
        @@all 
    end

    def save 
        @@all << self
    end

end