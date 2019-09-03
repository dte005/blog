class Post < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :answers, through: :ratings

  validates :titulo, presence: true
end
