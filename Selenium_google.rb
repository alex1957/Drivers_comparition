require 'selenium-webdriver'
n=5
delta = 0
(1..n).each do
start = Time.now
browser = Selenium::WebDriver.for :firefox
browser.manage.timeouts.implicit_wait = 5
browser.navigate.to  'http://google.com'
browser.find_element(:id=>'gbqfq' ).send_keys 'capybara'
browser.find_element(:id => 'gbqfb').click
browser.title
browser.find_element(:class=>'st').text

browser.quit
finish = Time.now
delta += (finish - start)

end
puts delta = delta/n
puts  'Selenium is done'
puts  '---------------------------'
 result = '- ' + delta.to_s + ' - selenium'
File.open('res.txt', 'a'){|f| f.puts(result)}