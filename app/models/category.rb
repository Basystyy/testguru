class Category < ApplicationRecord

  scope :names, -> { order(title: :asc) }
  scope :id_from_category, -> (category_title) { where(title: category_title).select(:id) }

  has_many :tests

  validates :title, presence: true

end
