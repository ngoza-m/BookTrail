class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :author, presence: true
  validates :img_url, presence: true
  validates :date, presence: true
  validates :book_id, presence: true
  validates :status, presence: true, inclusion: { in: ["Read", "Currently Reading", "Want to Read", "Favorite"], message: "%{value} is not a valid status" }
end
