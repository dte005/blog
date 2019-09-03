class Rating < ApplicationRecord
  belongs_to :post
  has_many :answers, dependent: :destroy

  validates :star, presence: true, inclusion: { in: [1, 2, 3, 4, 5], allow_nil: false }
end
