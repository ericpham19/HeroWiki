class HeroWiki::Heroes

    attr_accessor :name, :description, :abilities, :special_moves, :quotes

    @@heroes= []

    def initialize(name, description: nil, abilities: nil, special_moves: nil, quotes: nil)
        @name = name
        @description = description
        @abilities = abilities
        @special_moves = special_moves
        @quotes = quotes
        
        @@heroes << self
    end

    def self.heroes
        @@heroes
    end
end