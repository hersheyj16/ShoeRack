require 'csv'
require_relative 'shoe'
class CsvReader

	def initialize
		@shoes = []
	end
	
	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			puts "putting the #{row} into shoe rack"
			p row
			@shoes << Shoe.new(row["SKU"], row["Shoe"], row["Size"], row["Price"])
		end
	end

	def total_value_of_shoes
		sum = 0.0
		p @shoes

		@shoes.each{|shoe| sum += shoe.price}
		@shoes.each{|shoe| puts"#{shoe.price}" } 
		puts "sum is #{sum}"

		sum
	end

	def total_number_of_shoes
		@shoes.size
	end

	def shoe_hash
	end
end

