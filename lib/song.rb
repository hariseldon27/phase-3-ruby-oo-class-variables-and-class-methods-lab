require 'pry'
class Song
    attr_accessor :name, :artist, :genre, :all_genres

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = @@genres.length
    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@artists << self.artist
        @@genres << self.genre
        # @@genres |= [self.genre] #this one checks if the genre is already present
        @@count +=1
        # binding.pry
    end
    
    def self.all
        @@all
    end
    def self.count
        @@count
    end
    def self.artists #return array of unique entries
        unique_artists = @@artists.uniq
    end
    def self.genres #return an array of unique entries
        unique_genres = @@genres.uniq
    end
    def self.all_genres #return array of all entries
        @@genres
    end
    def self.genre_count
        # @@genres.uniq.map { |el| "el: #{el} count: #{@@genres.count(el)}"}

        freq = Hash.new(0)
        @@genres.each { |el| freq[el] += 1}
        return freq
        # freq.map{ |key, value| "#{key} => #{value}" }

        # genre_histo = @@genres.each { }

        # @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end

    binding.pry
end
song1 = Song.new "sweet name", "artist dude", "rap"
song2 = Song.new "lovely name", "artist lady", "hip-hop"
song3 = Song.new "stinky name", "stupid person", "rap"
song4 = Song.new "Jame name", "stupid artist", "folk"
song5 = Song.new "Joe Doe", "lame person", "folk"
song6 = Song.new "Don Dinger", "rad artist", "rap"
# binding.pry