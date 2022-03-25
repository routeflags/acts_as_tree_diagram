require 'sassc-rails'

module ActsAsTreeDiagram
  class Railtie < Rails::Railtie
    initializer 'acts_as_tree_diagram' do |_|
      ActiveSupport.on_load :action_view do
        require 'acts_as_tree_diagram/action_view'
      end
    end
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
