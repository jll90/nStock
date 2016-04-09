class Product < ActiveRecord::Base

	validates :on_storage, presence: true, numericality: true { greater_than_or_equal_to: 0 }
	validates :on_shop, presence: true, numericality: true { greater_than_or_equal_to: 0 }

	validates :purchase_price, presence: true, numericality: true { greater_than_or_equal_to: 0 }
	validates :base_price, presence: true, numericality: true { greater_than_or_equal_to: 0 }

	validates :bag_code, presence: true
	validates :shop_code, presence: true
	validates :description, presence: true
	validates :colors, presence: true
	validates :sizes, presence: true

	validates :last_purchase_at, presence: true
	
end