class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :order_lines, dependent: :destroy
  has_many :author_books, dependent: :destroy
  has_many :authors, through: :author_books

  mount_uploader :picture, PictureUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :publishing_company, presence: true
  validates :summary, presence: true
  validates :quantity, presence: true
  validate  :picture_size

  belongs_to :publishing_company
  belongs_to :category

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add :picture, t(".errors")
    end
  end
end
