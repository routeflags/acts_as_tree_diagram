class Animal < ApplicationRecord
	extend ActsAsTree::TreeView
	extend ActsAsTree::TreeWalker
	acts_as_tree order: "name"
end
