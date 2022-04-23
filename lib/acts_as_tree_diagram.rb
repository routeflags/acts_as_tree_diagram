require 'acts_as_tree_diagram/version'
require 'acts_as_tree_diagram/railtie'

module ActsAsTreeDiagram
  module ViewDiagram
    #   Animal.diagram_molecules_tag(where: { id: 1 }, path: animals_path).html_safe
    #   =>   "<li>
    #           <code><a href="/animals/2">2</a></code>
    #           <ul>
    #             <li><code><a href="/animals/5">5</a></code></li>
    #           </ul>
    #       </li>
    #       <li><code><a href="/animals/3">3</a></code>
    #         <ul>
    #           <li><code><a href="/animals/7">44</a></code></li>
    #         </ul>
    #       </li>"
    #
    # @param [Hash] options .
    # @return [String]
    def diagram_molecules_tag(options = {})
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
