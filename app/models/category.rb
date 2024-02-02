class Category < ApplicationRecord

  scope :names, -> { order(title: :asc) }

  has_many :tests

end
