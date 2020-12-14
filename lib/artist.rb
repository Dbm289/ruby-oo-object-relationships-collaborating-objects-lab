require 'pry'
class Artist

    attr_accessor :name

    @@all = []

    @@song_count = 0

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self

    end

    def self.all
        @@all

    end

    def songs
        Song.all.select {|song| song.artist == self}

    end

    def add_song(song)
        song.artist = self
        @@all << self
        @@song_count += 1
        

    end

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.new(name)

    end

    def self.find_by_name(artist_name)
        self.all.find{|artist| artist.name == artist_name}
        #binding.pry


    end

    def self.new_by_name(song_name)
        new_song = self.new
        new_song.name = song_name
        return new_song

    end

    #def self.create_by_name(name)
     #   new_song = self.new_by_name(name)
      #  new_song.save
       # return new_song

    #end

    def print_songs
        self.songs.each do | song_object | 
            puts song_object.name
        end 

    end

end