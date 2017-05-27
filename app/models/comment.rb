class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  scope :newest, -> {order created_at: :desc}

  validates :user, presence: true
  validates :content, presence: true
end
