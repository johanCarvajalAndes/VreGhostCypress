if ENV["ADB_DEVICE_ARG"].nil?
  require 'kraken-mobile/steps/web/kraken_steps'

  $_id=0

  Then(/^I store a variable with the current url$/) do
    $url_variable = @driver.current_url
    File.write('./.variable.txt', $url_variable)
    puts($url_variable) 
  end

  Given(/^I navigate to page with the url stored in the variable$/) do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable.split(",",3)[0])
    @driver.navigate.to $url_variable.split(",",3)[0]
    sleep 2
  end

  Given("I am authenticated I logged in successfully") do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable.split(",",3)[1])
    @driver.find_element(:xpath, "//*[@id='ember8']").send_keys($url_variable.split(",",3)[1])
    @driver.find_element(:xpath, "//*[@id='ember10']").send_keys($url_variable.split(",",3)[2])
    @driver.find_element(:xpath, "//*[@id='ember12']").click()
    sleep 2
  end  

  When("I enter my email {string}") do |text|
    @driver.find_element(:xpath, "//*[@id='ember8']").send_keys(text)
    sleep 2
   
  end

  When("I enter my password {string}") do |text|
    @driver.find_element(:xpath, "//*[@id='ember10']").send_keys(text)
    sleep 2
   
  end

  When("I click on sign in") do 
    @driver.find_element(:xpath, "//*[@id='ember12']/span").click()
    sleep 2
   
  end


  When("I visit pages") do 
    @driver.navigate.to "http://www.localhost:2371/ghost/#/pages"
    sleep 2
  end

  When("I click on new page") do 
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/header/section/a/span").click()
    sleep 1
    
  end

  When("I write a new title {string}") do |text|
    sleep 3
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea").click()
    sleep 3
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea").send_keys(text)
    sleep 7
   
  end

  When("I go back to pages without publishing") do 

    @driver.navigate.to "http://www.localhost:2371/ghost/#/pages"
    # @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/header/div/div[1]/a").click()
    # sleep 6
    # @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/header/div/div[1]/a").click()
    # sleep 4
  end
 
  
  Then("I publish my page") do 
    sleep 3
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/header/section/div/div[1]/span").click()
    sleep 4
    @driver.find_element(:xpath, "/html/body/div[1]/div/footer/button[2]/span").click()
    sleep 3
  end
  

  When("I go back to pages") do 
    @driver.navigate.to "http://www.localhost:2371/ghost/#/pages"
    sleep 6
  end

  Then("I expect to see the title of my publication {string}") do |text|
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3[text()='#{text}']")
    sleep 3
  end 

  Then("I delete my page") do 
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/header/section/button").click()
    sleep 4
    @driver.find_element(:xpath, "/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/button/span").click()
    sleep 3
    @driver.find_element(:xpath, "/html/body/div[4]/div[2]/div/div/div/div[2]/section/div[2]/button[2]/span").click()
    sleep 3
  
  end

  Then("I confirm the user {string}") do |text|
    sleep 4
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/section/ol/li[3]/a[2]/p/span/span[text()='#{text}']")
    sleep 3
    
  end

  Then(/^I store a variable with the current url$/) do
    $url_variable = @driver.current_url    
    File.write('./.variable.txt', $url_variable)
    puts($url_variable) 
  end

  Given(/^I navigate to page with the url stored in the variable$/) do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable)
    @driver.navigate.to $url_variable
    sleep 2
  end
  


  Then("I click in path {string}") do |path|
    @driver.find_element(:xpath,path).click()
    sleep 1
      
  end
  Then("I write text {string} in path {string}") do |text, path|
    @driver.find_element(:xpath,path).send_key(text)
    sleep 1
  end
  Then("I visit to slug route") do 
    $url_variable = @driver.find_element(:xpath,"/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/div[1]/p").text()
    sleep 1
    @driver.navigate.to $url_variable
    
    Then(/^I store a variable with the current url$/) do
      $url_variable = @driver.current_url    
      File.write('./.variable.txt', $url_variable)
      puts($url_variable) 
    end
  
    Given(/^I navigate to page with the url stored in the variable$/) do
      $url_variable = IO.read("./.variable.txt")  
      puts($url_variable)
      @driver.navigate.to $url_variable
      sleep 2
    end
    
    Then ("I click on element {string}")do |field|
      @driver.find_element(:xpath,field).click()
      sleep 1
    end
    
    Then ("I selectItem {string}") do |field|
      @driver.find_element(:xpath,field).click()
      
    end

  end
  Then(/^I store a variable with the current url$/) do
    $url_variable = @driver.current_url
    File.write('./.variable.txt', $url_variable)
    puts($url_variable) 
  end

  Given(/^I navigate to page with the url stored in the variable$/) do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable.split(",",3)[0])
    @driver.navigate.to $url_variable.split(",",3)[0]
    sleep 2
  end

  Given("I am authenticated I logged in successfully") do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable.split(",",3)[1])
    @driver.find_element(:xpath, "//*[@id='ember8']").send_keys($url_variable.split(",",3)[1])
    @driver.find_element(:xpath, "//*[@id='ember10']").send_keys($url_variable.split(",",3)[2])
    @driver.find_element(:xpath, "//*[@id='ember12']").click()
    sleep 2
  end

  When("I go to de General option") do 
    @driver.find_element(:xpath, "/html/body/div[2]/div/nav[1]/section/div[1]/ul[3]/li[2]/a").click()
  end 

  When('Expand time zone option') do
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[2]/div[2]/div[2]/button/span").click()
  end  

  

  When('Click on general save button') do
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/header/section/button/span").click()
  end

  Then ("I refresh page") do
    @driver.navigate().refresh();
    sleep 2
  end 

  Then ("I compare values in select input {string}") do |text|
   $selected_input =  @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[2]/div[2]/div[1]/div[3]/div/div/div/span/select")
   $selected_value = $selected_input.attribute("value")
   if text != $selected_value
      raise 'Valor no coincide prueba fallida.'
   end
  end 

  When('Expand time social Account') do
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[8]/div/div[2]/button/span").click()
  end  

  When('I set incorrect value in Social accounts input and screen show alert') do
    $input_Facebok = @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[8]/div/div[1]/div[3]/div/div/div[1]/input")    
    $input_Facebok.send_keys(:control, "a")
    $input_Facebok.send_keys(:delete, "Hola mundo")
    $input_twitter = @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[8]/div/div[1]/div[3]/div/div/div[2]/input").click(); 

    $selected_value = @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[8]/div/div[1]/div[3]/div/div/div[1]/p[1]").text
    
   if "The URL must be in a format like https://www.facebook.com/yourPage" != $selected_value
      raise 'Valor no coincide prueba fallida.'
   else
    $input_Facebok.send_keys(:control, "a")
    $input_Facebok.send_keys(:delete, "https://www.facebook.com/uniandes")
    @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/header/section/button/span").click()
   end   
  end 

  When('Expand title button') do
    @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[2]/div[1]/div[2]/button").click()
  end  

  When('Change title in general option') do
    $input_Title = @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[2]/div[1]/div[1]/div[3]/div/div/div[1]/input")
    $input_Title.send_keys(:control, "a")
    $input_Title.send_keys(:delete, "Este es el sitio oficial de la Uniandes- Pruebas ")
  end 

  Then('Validate title') do 
    $selected_input =  @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[2]/div[1]/div[1]/div[3]/div/div/div[1]/input")
    $selected_value = $selected_input.attribute("value")
    if "Este es el sitio oficial de la Uniandes- Pruebas " != $selected_value
      raise 'Valor no coincide prueba fallida.'
   end
  end   

  When('Expand Language button') do
    @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[2]/div[3]/div[2]/button").click()
  end  

  When('Change Language in general option') do
    $input_Language = @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[2]/div[3]/div[1]/div[3]/div/div/div/input")
    $input_Language.send_keys(:control, "a")
    $input_Language.send_keys(:delete, "es")
  end 
  
  Then('Validate Languaje') do 
    $input_Language =  @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[2]/div[3]/div[1]/div[3]/div/div/div/input")
    $selected_value = $input_Language.attribute("value")
    if "es" != $selected_value
      raise 'Valor no coincide prueba fallida.'
   end
  end   
  
  When('Expand metadata button') do
    @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[6]/div[1]/div[1]/div[2]/button").click()
  end

  When('Change metadata title in general option') do
    $input_Title = @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[6]/div[1]/div[2]/div/div/div/div[1]/div[1]/input")
    $input_Title.send_keys(:control, "a")
    $input_Title.send_keys(:delete, "Nuevo metadata title")

    $input_Description = @driver.find_element(:xpath,"/html/body/div[2]/div/main/section/div/section/div[6]/div[1]/div[2]/div/div/div/div[1]/div[2]/textarea")
    $input_Description.send_keys(:control, "a")
    $input_Description.send_keys(:delete, "Nuevo metadata description")    
  end   

  Then('Validate metadata') do 
    $input_metadata=  @driver.find_element(:xpath, "/html/body/div[2]/div/main/section/div/section/div[6]/div[1]/div[2]/div/div/div/div[1]/div[1]/input")
    $selected_value = $input_metadata.attribute("value")
    if "Nuevo metadata title" != $selected_value
      raise 'Los valores no coinciden prueba fallida'
   end
  end  
# Hooks
AfterStep do |scenario, test_step|              
  if test_step.text == "mark scenarion escenario1"
    $featurescenariostep ="escenario1"
  elsif test_step.text == "mark scenarion escenario2"
    $featurescenariostep= "escenario2"
  elsif test_step.text == "mark scenarion escenario3"
    $featurescenariostep= "escenario3"
  elsif test_step.text == "mark scenarion escenario4"
    $featurescenariostep= "escenario4"
  elsif test_step.text == "mark scenarion escenario5"
    $featurescenariostep= "escenario5"
  elsif test_step.text == "mark scenarion escenario6"
    $featurescenariostep= "escenario6"
  elsif test_step.text == "mark scenarion escenario7"
    $featurescenariostep= "escenario7"
  elsif test_step.text == "mark scenarion escenario8"
    $featurescenariostep= "escenario8"
  elsif test_step.text == "mark scenarion escenario9"
    $featurescenariostep= "escenario9"
  elsif test_step.text == "mark scenarion escenario10"
    $featurescenariostep="escenario10"
  elsif test_step.text == "mark scenarion escenario11"
    $featurescenariostep="escenario11"
  elsif test_step.text == "mark scenarion escenario12"
    $featurescenariostep="escenario12"
  elsif test_step.text == "mark scenarion escenario13"
    $featurescenariostep="escenario13"
  elsif test_step.text == "mark scenarion escenario14"
    $featurescenariostep="escenario14"
  elsif test_step.text == "mark scenarion escenario15"
    $featurescenariostep="escenario15"
  elsif test_step.text == "mark scenarion escenario16"
    $featurescenariostep="escenario16"
  elsif test_step.text == "mark scenarion escenario17"
    $featurescenariostep="escenario17"
  elsif test_step.text == "mark scenarion escenario18"
    $featurescenariostep="escenario18"
  elsif test_step.text == "mark scenarion escenario19"
    $featurescenariostep="escenario19"
  elsif test_step.text == "mark scenarion escenario20"
    $featurescenariostep="escenario20"
  end
  $versionapp = '3.3.0'
  Dir.mkdir("./tvr") unless File.exist?("./tvr")
  Dir.mkdir("./tvr/#{$versionapp}") unless File.exist?("./tvr/#{$versionapp}")
  Dir.mkdir("./tvr/#{$versionapp}/#{$featurescenariostep}") unless File.exist?("./tvr/#{$versionapp}/#{$featurescenariostep}")
  path = "./tvr/#{$versionapp}/#{$featurescenariostep}/#{$_id}.png"
  $_id = $_id  + 1
  @driver.save_screenshot(path)
  embed(path, 'image/png', File.basename(path))    
end  
  
Given("mark scenarion {string}" ) do  |text|
  $featurescenariostep = text;  
end  

end