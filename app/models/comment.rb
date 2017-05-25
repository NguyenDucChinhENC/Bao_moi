class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  order created_at: :desc
  validates :user, presence: true
  validates :book, presence: true
  validates :content, presence: true, length: {maximum: 140}
end
