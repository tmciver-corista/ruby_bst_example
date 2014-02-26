require 'test/unit'

require_relative '../lib/binary_search_tree'

class BSTTest < Test::Unit::TestCase

	def testEqual1
		# manually build the 'expected' tree
		bst_expected = BinarySearchTree.new(4)
		bst_expected.left = BinarySearchTree.new(3)
		bst_expected.right = BinarySearchTree.new(5)

		# create the 'actual' tree
		bst = BinarySearchTree.new(4)
		bst.add(3)
		bst.add(5)

		assert(bst == bst_expected)
	end

	def testEqual2
		# manually build the 'expected' tree
		bst_expected = BinarySearchTree.new(5)
		bst_expected.left = BinarySearchTree.new(4)
		bst_expected.left.left = BinarySearchTree.new(3)
		bst_expected.left.left.left = BinarySearchTree.new(2)
		bst_expected.left.left.left.left = BinarySearchTree.new(1)

		# create the 'actual' tree
		bst = BinarySearchTree.new(5)
		bst.add(4)
		bst.add(3)
		bst.add(2)
		bst.add(1)

		assert(bst == bst_expected)
	end

	def testEqual3
		# manually build the 'expected' tree
		bst_expected = BinarySearchTree.new(0)
		bst_expected.left = BinarySearchTree.new(-2)
		bst_expected.right = BinarySearchTree.new(5)
		bst_expected.left.right = BinarySearchTree.new(-1)
		bst_expected.right.left = BinarySearchTree.new(3)

		# create the 'actual' tree
		bst = BinarySearchTree.new(0)
		bst.add(-2)
		bst.add(5)
		bst.add(-1)
		bst.add(3)

		assert(bst == bst_expected)
	end
end
