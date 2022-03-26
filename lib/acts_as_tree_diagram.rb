require "acts_as_tree_diagram/version"
require "acts_as_tree_diagram/railtie"
require "acts_as_tree_diagram/core_ext"
require "action_view"

module ActsAsTreeDiagram
	module ViewDiagram
		def draw_diagram(options = {}, &block)
			where = options.fetch :where, {}
			# where(where).map{|x| draw_tree(x) }.join("\n")
			draw_tree(find(1))
		end

		def draw_tree(node)
			html = ''
			node.children.each do |child|
				# html = html.concat "<li><code>#{generate_tree_url(child, child.name)}</code>"
				html = html.concat "<li><code>#{child.name}</code>"
				html.concat "<ul>#{draw_tree(child)}</ul>" if child.children.any?
				html.concat '</li>'
			end
			html.html_safe
		end

		def generate_tree_url(node, label)
			# include ActionView::Helpers::UrlHelper
			# link_to label, animal_path(node)
		end

		def animal_path(animal)
			"/animals/#{animal.id}"
		end

	end
end
