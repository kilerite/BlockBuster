class BbMovie < ApplicationRecord
    has_many :bb_rentals, dependent: :destroy

 
end
