class Boss < ApplicationRecord
  has_many :battles
  has_many :characters, through: :battles
end
