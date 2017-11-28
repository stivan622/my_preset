class User < ApplicationRecord
  has_many :user_weaknesses
  has_many :weaknesses, through: :user_weaknesses

  accepts_nested_attributes_for :user_weaknesses
end
