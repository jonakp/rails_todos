class Todo < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :status, presence: true
  validates :priority, presence: true,
                       numericality: { only_integer: true,
                                       less_than_or_equal_to: 5,
                                       greater_than_or_equal_to: 0 }
end
