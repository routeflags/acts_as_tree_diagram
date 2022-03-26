require "acts_as_tree_diagram/version"
require "acts_as_tree_diagram/railtie"
require "action_view"

module ActsAsTreeDiagram
	module ViewDiagram
		def draw_diagram(options = {}, &block)
			where = options.fetch :where, {}
			where(where).map{|x| draw_tree(x, options) }.join("\n")
		end

		def draw_tree(node, options = {})
			html = ''
			node.children.each do |child|
				path = options.fetch :path, ''
				if path.blank?
					html = html.concat "<li><code>#{child.name}</code>"
				else
					html = html.concat "<li><code>#{generate_tree_url(path, child, child.name)}</code>"
				end
				html.concat "<ul>#{draw_tree(child, options)}</ul>" if child.children.any?
				html.concat '</li>'
			end
			html.html_safe
		end

		def generate_tree_url(path, node, label)
			"<a href='#{path}/#{node.id}'>#{label}</a>"
		end

	end
end
