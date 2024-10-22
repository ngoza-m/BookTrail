class Goal < ApplicationRecord
  validates :number_of_books, presence: true
  validates :number_of_books, numericality: { only_integer: true, greater_than: 0 }
  validates :year, presence: true, numericality: { only_integer: true }

  belongs_to :user
end
