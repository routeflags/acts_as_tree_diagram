require 'sassc-rails'

module ActsAsTreeDiagram
  class Railtie < ::Rails::Railtie
  end
  module Rails
    class Engine < ::Rails::Engine
      initializer 'acts_as_tree_diagram.assets' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
