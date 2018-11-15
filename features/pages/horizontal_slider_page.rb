require_relative 'the_internet_page'

class HorizontalSlider < TheInternet

	def bar
		@driver.input(type: 'range')
	end

	def button
		@driver.span(id: 'range')
	end

end