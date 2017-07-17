require 'rspec'
require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path='/usr/local/bin/chromedriver'

RSpec.describe "Homepage Logo Check" do
  let(:header_logo_xpath) { "//div[@id='static-content']//div[@class='header__logo']" }
  let(:footer_logo_xpath) { "//div[@id='footer']//div[contains(@class,'logo') and contains(@class,'wiggle')]" }

  context "with the Zapier homepage loaded" do

    before(:all) do
      @driver = Selenium::WebDriver.for :chrome
      @driver.manage.timeouts.implicit_wait = 10
      @driver.get "http://www.zapier.com/"
    end

    after(:all) do
      @driver.quit
    end

    it "it confirms the presence of the masthead logo" do
      header_logo = @driver.find_element(xpath: header_logo_xpath)
      expect(header_logo.css_value('background-image').include? 'zapier-small-orange-logo.png').to be_truthy
    end

    it "it confirms the presence of the footer logo" do
      footer_logo = @driver.find_element(xpath: footer_logo_xpath)
      expect(footer_logo.css_value('background-image').include? 'footer-logo.png').to be_truthy
    end

  end
end
