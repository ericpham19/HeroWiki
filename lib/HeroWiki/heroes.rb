class HeroWiki::Heroes

    attr_accessor :title, :description, :abilities, :special_moves, :quotes, :url

    @@heroes= []

    def initialize(title, description, abilities, special_moves, quotes, url)
        @title = title
        @description = description
        @abilities = abilities
        @special_moves = special_moves
        @quotes = quotes
        @url = url
        @@heroes << self
    end

    def self.heroes
        @@heroes
    end
end