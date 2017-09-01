class Dinosaur < ApplicationRecord
  scope :order_by_name, -> { order(:name) }
  def is_baby?
    age < 3
  end
end
