class Answer < ApplicationRecord
  belongs_to :rating

  validates :description, presence: true
end
