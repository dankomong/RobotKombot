class User < ApplicationRecord

  has_secure_password
  has_many :characters
  has_many :jobs, through: :characters

validates :username, presence: true, uniqueness: true
validates :password_digest, presence: true

















end
