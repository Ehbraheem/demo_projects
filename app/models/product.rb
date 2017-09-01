class Product < ApplicationRecord

	belongs_to :category

	default_scope { order("name ASC") }

	scope :recent, -> { where(["created_at >= ?", 1.year.ago]) }
	
end
