class Product < ApplicationRecord

	belongs_to :category

	default_scope { order("name ASC") }

	scope :recent, -> { where(["created_at >= ?", 1.year.ago]) }

	delegate :prefix, to: :category, allow_nil: true

	def full_ref_num
		"#{prefix}-#{ref_num}"
	end

end
