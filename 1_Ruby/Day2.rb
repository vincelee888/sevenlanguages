# CLASSES 
# ===
# Conventions:
# ---
# CamelCaseClassName
# @instanceVariable
# @@classVariable
# method_names_are_underscore_lowercase
# CONSTANTS_ARE_ALL_CAPS
# attr defines an instance variable with getter of the same method_names_are_underscore_lowercase
# attr_accessor defines an instance variable with an additional setter

# modules define a library of methods. 
# Modules can then be included by a class and then used by its instances - a mixin

myArray = [*(1..16)] # fill array with range from 1 to 16 inclusive of 16

myArray.each do |x| 
	p myArray[((x - 4)...x)] if x % 4 == 0 # get elements of array from x-4 to x excluding x
end

myArray.each_slice(4) { |x| p x }

class Tree
	attr_accessor :children, :node_name

	def initialize(name, children=[])
		if name.is_a?(Hash)
			root_node = name.first
			name = root_node[0]
			children = root_node[1]
		end

		if(children.is_a?(Hash))
			children = children.map { |child_name, grandchildren| Tree.new(child_name, grandchildren) }
		end

		@node_name = name
		@children = children
	end

	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block }
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new('Ruby', [
	Tree.new('Reia'),
	Tree.new('MacRuby')
])

puts ruby_tree.visit_all { |node| puts node.node_name }

ruby_tree2 = Tree.new({ 'Ruby' => { 
		'Reia' => {},	
		'MacRuby' => {} 
	}
})

puts ruby_tree2.visit_all { |node| puts node.node_name }

def myGrep(src, pattern)
	File.open(src) { |file| 
		file.each_with_index { |line, line_number|
			p "#{line_number}: #{line}" if line.include? pattern
		}
	}
end 

myGrep('day2_text.txt', "British identity")