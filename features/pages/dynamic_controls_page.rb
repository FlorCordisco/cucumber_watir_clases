require_relative 'the_internet_page'

class DynamicControls < TheInternet

	def checkbox
		@driver.element(id: 'checkbox')
	end

	def button_remove
		@driver.button(text: 'Remove')
	end

	def button_add
		@driver.button(text: 'Add')
	end

	def field
	 	@driver.input(type: 'text')
	end

	def enable_button
		@driver.button(text: 'Enable')
	end

	def disable_button
		@driver.button(text: 'Disable')
	end

end
