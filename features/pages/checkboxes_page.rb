require_relative 'the_internet_page'

class Checkboxes < TheInternet
	
	def distil
		elementos = @driver.inputs(type: "checkbox")
		elementos[1].click
		sleep 2
	end 

	def check
		elementos = @driver.inputs(type: "checkbox")
		sleep 2

		if 	(elementos[0].attribute_value('checked') == nil) && (elementos[1].attribute_value('checked') == nil)
			puts "Los dos Checkboxs estan destildados"
		else 
			puts "No estan destildados los Checkboxes"
		end
		
	end
end 
 