class Battle < ApplicationRecord
  belongs_to :boss
  belongs_to :character
end
