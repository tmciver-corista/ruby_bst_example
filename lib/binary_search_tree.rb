class BinarySearchTree
	attr_accessor :val, :left, :right

	def initialize(val)
		@val = val
		@left = nil
		@right = nil
	end

	def add(val)
		if val < @val
			if @left.nil?
				@left = BinarySearchTree.new(val)
			else
				@left.add(val)
			end
		else val > @val
			if @right.nil?
				@right = BinarySearchTree.new(val)
			else
				@right.add(val)
			end
		end
	end

	def to_s
		"(#{@val} #{@left.to_s} #{@right.to_s})"
	end

	def ==(other)
		return self.val == other.val && self.left == other.left && self.right == other.right
	end
end
