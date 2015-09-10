class Place < ActiveRecord::Base
    belongs_to :category
    geocoded_by :address
    after_validation :geocode
    belongs_to :user
    
end
