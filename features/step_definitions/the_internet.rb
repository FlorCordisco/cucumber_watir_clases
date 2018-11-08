require 'watir'

Given("I go to the-internet.herokuapp") do 
	@browser = TheInternet.new(Watir::Browser.new)
	@browser.open_page
	sleep 2
end 
 
And(/^I click in "([^"]*)"$/) do |argumento| 
	@sub_page = @browser.send(argumento.downcase)
end

And("I distil the second item") do 
	@sub_page.distil
end

Then("I check that the items are distilled") do 
	@sub_page.check 
	#@browser.close
end


And("I click in selector") do 
	@sub_page.clicksel
end

And("I click in opcion 2") do 
	@sub_page.clickop
end

Then("I check that items are distilled") do 
	@sub_page.chequear
	#@browser.close
end


And("I hovers on the user3") do 
	@sub_page.hover 
end

Then("I checked to see the user and the profile link") do 
	@sub_page.checked
	#@browser.close
end