class Product < ActiveRecord::Base

	default_scope {where(deleted: false)}

	after_initialize :set_delete_false
	before_save :append_brand_suffix

	validate :delete_false_status, on: :create

	validates :on_storage, presence: true, numericality: { greater_than_or_equal_to: 0 }
	validates :on_shop, presence: true, numericality: { greater_than_or_equal_to: 0 }

	validates :purchase_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
	validates :base_price, presence: true, numericality: { greater_than: Proc.new{ |product| product.purchase_price } }

	validates :bag_code, presence: true
	validates :shop_code, presence: true
	validates :description, presence: true
	validates :colors, presence: true
	validates :sizes, presence: true

	private

		def append_brand_suffix
			self.shop_code = "JV" + self.shop_code
		end

		def set_delete_false
			self.deleted = false
		end

		def delete_false_status
			errors.add(:product, "product cannot be marked for deletion upon creation") unless self.deleted == false
		end

		# def pricing_scheme
		# 	errors.add(:product, "base price must be greater than purchase price") unless (self.base_price > self.purchase_price)
		# end

		# def correct_date_format
		# 	d, m, y = self.last_purchase_at.split '-'
		# 	errors.add(:product, "date is invalid") unless Date.valid_date? y.to_i, m.to_i, d.to_i
		# end
	
end