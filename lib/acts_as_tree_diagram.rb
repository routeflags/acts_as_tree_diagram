require 'acts_as_tree_diagram/version'
require 'acts_as_tree_diagram/railtie'

module ActsAsTreeDiagram
  module ViewDiagram
    # @param [Hash] options .
    # @return [String]
    def draw_diagram(options = {})
      where = options.fetch :where, {}
      where(where).map { |x| draw_tree(x, options) }.join("\n")
    end

    private

    # @param [ApplicationRecord] node
    # @param [Hash] options
    # @return [String] html
    def draw_tree(node, options = {})
      html = ''
      node.children.each do |child|
        path = options.fetch :path, ''
        html = if path.blank?
                 html.concat "<li><code>#{child.name}</code>"
               else
                 html.concat "<li><code>#{generate_tree_url(path, child, child.name)}</code>"
               end
        html.concat "<ul>#{draw_tree(child, options)}</ul>" if child.children.any?
        html.concat '</li>'
      end
      html
    end

    # @param [String] path
    # @param [ApplicationRecord] node
    # @param [String] label
    # @return [String] html
    def generate_tree_url(path, node, label)
      "<a href='#{path}/#{node.id}'>#{label}</a>"
    end
  end
end
