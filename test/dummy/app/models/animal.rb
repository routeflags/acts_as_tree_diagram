class Animal < ApplicationRecord
	extend ActsAsTree::TreeView
	extend ActsAsTree::TreeWalker
	extend ActsAsTreeDiagram::ViewDiagram
	acts_as_tree order: "name"
end
