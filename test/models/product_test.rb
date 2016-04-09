require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
	  @product = Product.new(
	  	on_storage: 12,
	  	on_shop: 15,
	  	purchase_price: 1000,
	  	base_price: 1200,
	  	bag_code: 'XYZ',
	  	shop_code: '0001',
	  	description: 'This is the best product in our shelves',
	  	colors: 'Blue Violet Green',
	  	sizes: 'M, XS, L',
	  	last_purchase_at: '12-12-2012'
	  )
  end

  test "product is valid" do
  	assert @product.valid?
  end

  test "on storage must be a positive number" do
  	@product.on_storage = -1
  	assert_not @product.valid?
  end

  test "on shop must be a positive number" do
  	@product.on_shop = -1
  	assert_not @product.valid?
  end

  test "purchase price must be a positive number" do
  	@product.purchase_price = -1
  	assert_not @product.valid?
  end

  test "bag code must be present" do
  	@product.bag_code = ''
  	assert_not @product.valid?
  end

  test "shop code must be present" do
  	@product.shop_code = ''
  	assert_not @product.valid?
  end

  test "desription must be present" do
  	@product.description = ''
  	assert_not @product.valid?
  end	

  test "colors must be present" do
  	@product.colors = ''
  	assert_not @product.valid?
  end

  test "sizes must be present" do
  	@product.sizes = ''
  	assert_not @product.valid?
  end

  # test "last purchase at must be present" do
  # 	@product.last_purchase_at = ''
  # 	assert_not @product.valid?
  # end

  test "JV brand suffix is preappended " do
  	shop_code = "JV" + @product.shop_code
  	@product.save
  	assert_equal shop_code, @product.shop_code
  end

  test "pricing scheme" do
  	@product.base_price = 800
  	assert_not @product.valid?
  end

end