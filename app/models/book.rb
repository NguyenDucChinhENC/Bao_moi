class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :order_lines, dependent: :destroy
  has_many :categorys, dependent: :destroy
  has_many :author_books, dependent: :destroy
  has_many :authors, through: :author_books

  belongs_to :publishing_company
end
