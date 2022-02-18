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

class Batman::Comics1989
    #@@all = []
    @@all = ["The Dark Knight Returns", "Batman: Strange Apparitions", "The Golden Age Batman", "Batman #1", "Batman #213", "Detective Comics #553", "Batman #321 & Detective Comics #62","Batman #408"]
    
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

class Batman::Comics1992
    #@@all = []
    @@all = ["The Killing Joke", "Catwoman: Her Sister’s Keeper", "Detective Comics #509", "Superman’s Girlfriend Lois Lane #70", "Detective Comics #58", "Batman #341", "Detective Comics #546", "Batman #38"]
    
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

class Batman::Comics1995
    #@@all = []
    @@all = ["Detective Comics #38", "Batman: Year Three", "A Lonely Place Of Dying", "Detective Comics #66", "Detective Comics #140", "Knightfall", "Detective Comics #633", "Detective Comics #617", "Batman #398"]
    
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

class Batman::Comics1997
    #@@all = []
    @@all = ["Batman #139", "Batman #121", "Detective Comics #373", "Batman #181-183", "Legends Of The Dark Knight #43", "Batman #344", "Batman #344", "Digital Justice"]
    
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

class Batman::Comics2005
    #@@all = []
    @@all = ["The Man Who Falls", "Batman: Year One", "The Long Halloween", "Dark Victory ", "Batman #232", "Batman: Year Two"]
    
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

class Batman::Comics2008
    #@@all = []
    @@all = ["The Killing Joke", "The Joker's Five-Way Revenge", "The Long Halloween", "Batman #1"]
    
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

class Batman::Comics2012
    #@@all = []
    @@all = ["Batman: No Man's Land", "Catwomen: The Dark End of The Street", "Batman: Knightfall", "The Dark Knight Returns" "Vengeance Of Bane", "Bane Of The Demon", "Batman: The Cult", "Her Sister’s Keeper", "Batman #1"]
    
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
