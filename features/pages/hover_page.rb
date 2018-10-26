require_relative 'the_internet_page'

class Hovers < TheInternet
	
	def hover
		usuarios = @driver.divs(class: "figure")
		usuarios[2].hover
		sleep 2 
	end

	def checked
		if(@driver.h5(text: "name: user3").text == "name: user3") && (@driver.a(href: "/users/3").text == "View profile")
			puts "Hay usuario y perfil"
		else 
			puts "Falta algo de lo pedido"
		end
	end

end 