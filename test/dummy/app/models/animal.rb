# frozen_string_literal: true

class Animal < ApplicationRecord
  extend ActsAsTreeDiagram::ViewDiagram
  acts_as_tree order: 'name'
end
