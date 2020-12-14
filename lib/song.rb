require 'pry'
class Song

    attr_accessor :name, :artist

    @@all = []

    @@song_count = 0

    def initialize(name)
        @name = name
        save

    end

    def save
        @@all << self

    end

    #def add_song(song)
     #   song.artist = self
      #  @@all << self
       # @@song_count += 1

    #end

    #def songs
     #   Song.all.select {|song| song.artist == self}

    #end

    def self.all
        @@all

    end

    def self.new_by_filename(name)
        #binding.pry
        new_file = self.new(name.split(" - ")[1])
        artist = Artist.find_or_create_by_name(name.split(" - ")[0]) 
        new_file.artist = artist 
        #save
        return new_file

    end


    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        
        

    end

end