class User < ApplicationRecord
  has_many :characters
  has_many :jobs, through: :characters
end
