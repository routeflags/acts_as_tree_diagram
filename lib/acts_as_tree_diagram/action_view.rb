module ActsAsTreeDiagram
	module ActionView
		def exclamatize(string, number = 1)
			string + '!' * number
		end

		::ActionView::Base.send :include, self
	end
end