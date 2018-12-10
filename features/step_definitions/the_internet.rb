require 'watir'
require 'rspec'

Given("I go to the-internet.herokuapp") do 
	@browser = TheInternet.new(Watir::Browser.new)
	@browser.open_page
	sleep 2
end 
 
And(/^I click in "([^"]*)"$/) do |argumento| 
	origin = argumento.clone
	origin.downcase!
      origin.tr!(' ', '_')
      origin.tr!('/', '_')
      origin.tr!('-', '_')
      origin.rstrip!

      origin
      @sub_page = @browser.send(origin)
      sleep 3
end

And("I distil the second item") do 
	@sub_page.distil
end

Then("I check that the items are distilled") do 
	@sub_page.check 
end


And("I click in selector") do 
	@sub_page.clicksel
end

And("I click in opcion 2") do 
	@sub_page.clickop
end

Then("I check that items are distilled") do 
	@sub_page.chequear
end


And("I hovers on the user3") do 
	@sub_page.hover 
end

Then("I checked to see the user and the profile link") do 
	@sub_page.checked
end


And("I check the first image and the text are present") do
	@sub_page.chequear
end
    
And("I refresh the page") do
	@sub_page.refresh
end

Then("I checked that the first image and the first text are different") do
	@sub_page.comprobar
end

#
And("I check the checkbox is present") do
	@sub_page.checkbox.present?.should be true
end

And("I click on the remove button") do
	@sub_page.button_remove.click
	sleep 5
end

And("I check the checkbox is not present") do
	@sub_page.checkbox.present?.should be false
end 

And("I click on the add button") do
	@sub_page.button_add.click
	sleep 5
end

#
And("I check the field is disabled") do
	@sub_page.field.disabled?.should be true
end

And("I click on the enable button") do
	@sub_page.enable_button.click
	sleep 5
end

And("I check the field is enabled") do
	@sub_page.field.enabled?.should be true
end

And("I click on the disable button") do
	@sub_page.disable_button.click
	sleep 5
end

And("I click on the bar") do
	@sub_page.bar.click
	sleep 3
end
    
Then("I press the right button of the keyboard until the value indicates five") do
	i = 0
	loop do
  		i+=1
  		@sub_page.bar.send_keys(:arrow_right)
		sleep 3
  		break if i==5
	end
end


And(/^I check that the last name "([^"]*)" has "([^"]*)" in the "([^"]*)" column$/) do |lastname, data, head| 
	#puts @sub_page.column(head).text
	#puts @sub_page.row(lastname).text
	

	headers = @sub_page.table.tr.ths.collect{ |x| x.text }
	index = headers.index(head)

	puts (@sub_page.row(lastname)[index].text == data).should be true
end

