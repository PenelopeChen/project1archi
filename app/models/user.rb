class User < ApplicationRecord
    has_and_belongs_to_many :architects
    has_and_belongs_to_many :buildings
    has_secure_password
end
