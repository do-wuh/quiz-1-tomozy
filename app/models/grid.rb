class Grid < ApplicationRecord
  validates :name, presence: true, length: { maximum: 9 }
end