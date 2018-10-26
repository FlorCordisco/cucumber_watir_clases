require_relative 'the_internet_page'

class Dropdown < TheInternet 
	
	def clicksel
		@driver.select(id: "dropdown").click
	end	

	def clickop
		@driver.option(value: "2").click
	end

	def chequear
		if(@driver.option(value: "2").selected?)
 			 puts "Fue seleccionado"
		else
   			puts "No fue seleccionado"
		end
	end
end 