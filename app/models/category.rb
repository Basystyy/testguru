class Category < ApplicationRecord

  scope :names, -> { order(title: :asc) }
  scope :find_by_name, -> (category_title) { where(title: category_title).select(:id) }

  has_many :tests

end
