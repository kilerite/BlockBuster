class BbRental < ApplicationRecord
  belongs_to :bb_client
  belongs_to :bb_movie
end
