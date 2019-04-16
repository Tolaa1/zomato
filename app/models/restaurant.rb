class Restaurant < ApplicationRecord
    has_many :bookings
    has_many :customers, through: :bookings
    has_many :ratings
    has_many :customers, through: :ratings
    
end
