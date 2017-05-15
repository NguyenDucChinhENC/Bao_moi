class User < ApplicationRecord
  has_many :comment, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :rate, dependent: :destroy
end
