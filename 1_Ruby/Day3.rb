module ActsAsCsv
	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods
		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')

			file.each do |row|
				@csv_contents << CsvRow.new(@headers, row.chomp.split(', '))
			end
		end

		def each(&block)
			@csv_contents.each &block
		end


		attr_accessor :headers, :csv_contents

		def initialize
			read
		end
	end

	class CsvRow
		attr_accessor :headers, :content

		def initialize(headers, content)
			@headers = headers
			@content = content
		end

		def method_missing name, *args
			index = @headers.index(name.to_s)
			return @content[index]
		end
	end
end

class RubyCsv
	include ActsAsCsv
	acts_as_csv
end


m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect



m.each { |row| puts row.name }