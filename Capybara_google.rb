require 'selenium-webdriver'
require 'capybara'
#require 'capybara/poltergeist'
#require 'poltergeist'
n=5
delta = 0
(1..n).each do
start = Time.now
Capybara.run_server = false
Capybara.app_host = 'http://google.com'
#Capybara.javascript_driver =  :poltergeist
driver = Capybara::Session.new(:selenium)
driver.visit('/')
driver.fill_in('gbqfq', :with => 'capybara')
driver.click_button('gbqfb')
driver.document.title
driver.find(:xpath, "//*[@id='rso']/li[1]/div/div/div/span").text

finish = Time.now
delta += (finish - start)

end
puts delta = delta/n
puts  'Capybara is done'
puts  '---------------------------'
result = '- ' + delta.to_s + ' - capybara'
File.open('res.txt', 'a'){|f| f.puts(result)}


#//*[@id='rso']/li[1]/div/div/div/span