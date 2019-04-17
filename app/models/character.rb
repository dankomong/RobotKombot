class Character < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :battles
  has_many :bosses, through: :battles

validates :name, presence: true, uniqueness: true












end
