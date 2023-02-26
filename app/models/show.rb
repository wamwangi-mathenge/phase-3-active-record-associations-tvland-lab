class Show < ActiveRecord::Base

    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def self.actors_list
        self.characters[0].actor.full_name
    end
  
end