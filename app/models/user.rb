class User < ApplicationRecord
    has_secure_password
    # validates :email, :uniqueness => true, :present => true
    has_and_belongs_to_many :architects
    has_and_belongs_to_many :buildings
end
