class Building < ApplicationRecord
    belongs_to :architect, :optional => true
    has_and_belongs_to_many :users 
end
