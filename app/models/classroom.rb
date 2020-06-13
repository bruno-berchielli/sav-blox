class Classroom < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :capacity, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100}
end
