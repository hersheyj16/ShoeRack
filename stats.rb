require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|
	STDERR.puts "Processing #{csv_file_name}"
	reader.read_in_csv_data(csv_file_name)
	puts "total value of shoes"
	puts reader.total_value_of_shoes
	puts "total number  of shoes"
  puts reader.total_number_of_shoes
end
