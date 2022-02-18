class Batman::Comics1966

    #@@all = []
    @@all = ["Contemporary Batman Comics Of The 1960s"]
    
    attr_accessor :comicname

    def initialize(comicname)
        @comicname = comicname
        save 
    end

    def self.all
        @@all 
    end

    def save 
        @@all << self
    end

end