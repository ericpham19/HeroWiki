class HeroWiki::Heroes

    attr_accessor :title, :description, :abilities, :special_moves, :quotes, :link

    @@heroes= []

    def initialize(title, description, abilities, special_moves, quotes, link)
        @title = title
        @description = description
        @abilities = abilities
        @special_moves = special_moves
        @quotes = quotes
        @link = link
        @@heroes << self
    end

    def self.heroes
        @@heroes
    end
end