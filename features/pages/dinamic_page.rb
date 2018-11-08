require_relative 'the_internet_page'

class Dynamic < TheInternet

	def chequear
		if @driver.element(css: 'div > img').present? 
			@img_a = @driver.element(css: 'div > img').attribute_value('src')
		else
			fail("No aparece la imagen")
		end

		if @driver.div(class: 'large-10 columns').present?
		   @tex_a = @driver.div(class: 'large-10 columns').text
		else 
			fail("El texto no aparece")
		end
		sleep 2
	end

	def refresh
		@driver.refresh
		sleep 2
	end

	def comprobar
		img_b = @driver.element(css: 'div > img').attribute_value('src')
		tex_b = @driver.div(class: 'large-10 columns').text
	
		if @img_a != img_b 
			puts "La imagen a es diferente"
		else 
			fail("La imagen sigue igual")
		end

		if @tex_a != tex_b 
			puts "El texto a es diferente"
		else 
			fail("El texto sigue igual")
		end

	end
end