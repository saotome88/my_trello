class Card < ApplicationRecord
  belongs_to :list

  validates :title, length: {in: 1..255}
  validates :memo, length: {in: maximum: 1000}
end
