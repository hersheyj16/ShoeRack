class Shoe
	attr_reader :sku
	attr_accessor :price, :size, :description
	def initialize(sku, desc, size, price)
		@sku = sku
		@description = desc
		@size = size
		@price = Float(price)
		@owner = "jenny"
	end
end
