class Weakness < ApplicationRecord
  has_many :user_weaknesses

  scope :experience, -> { where(id: [1, 2, 3]) }
  scope :weak_point, -> { where.not(id: [1, 2, 3]) }
end
