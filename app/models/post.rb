class Post < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :answers, through: :ratings

  #controle para imagens

  validates :titulo, presence: true
end
