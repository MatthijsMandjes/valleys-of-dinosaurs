class Dinosaur < ApplicationRecord

  validates :name, presence: true, uniqueness: true

  validates :age, length: { maximum: 3}, allow_blank: true
  validates :image_url, length: { maximum: 255 }, allow_blank: true


  scope :order_by_name, -> { order(:name) }
  def is_baby?
    age < 3
  end
end
