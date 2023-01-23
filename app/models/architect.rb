class Architect < ApplicationRecord
    has_many :buildings
    has_and_belongs_to_many :users

end
