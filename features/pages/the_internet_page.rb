require 'watir'


class BrowserContainer
    def initialize(browser)
      @driver = browser
    end
end
  
class TheInternet < BrowserContainer
    
    def open_page
      @driver.goto('http://the-internet.herokuapp.com/')
    end

    def checkboxes
      @driver.a(text: 'Checkboxes').click		
      Checkboxes.new(@driver)
    end

    def dropdown
      @driver.a(text: 'Dropdown').click
      Dropdown.new(@driver)
    end

    def hovers
       @driver.a(text: 'Hovers').click
       Hovers.new(@driver)
    end

    def dynamic_content
      @driver.a(text: 'Dynamic Content').click
      Dynamic.new(@driver)
    end

    def dynamic_controls
      @driver.a(text: 'Dynamic Controls').click
      DynamicControls.new(@driver)
    end 

    def horizontal_slider
      @driver.a(text: 'Horizontal Slider').click
      HorizontalSlider.new(@driver)
    end

    def close
        @driver.close
    end

end