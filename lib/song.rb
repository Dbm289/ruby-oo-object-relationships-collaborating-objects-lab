class Song

    attr_accessor :name, :artist

    @@all = 0

    @@song_count = 0

    def initialize(name)
        @name = name
        @@all << self

    end

    def add_song(song)
        song.artist = self
        @@song_count += 1

    end

    def songs
        Song.all.select {|song| song.artist == self}

    end

    def self.all
        @@all

    end

    def self.new_by_filename

    end

    def artist_name=(artist_name)
        

    end

end