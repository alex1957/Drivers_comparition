require 'watir-webdriver'
n=5
delta = 0
(1..n).each do
start = Time.now
browser = Watir::Browser.new
browser.driver.manage.timeouts.implicit_wait = 5
browser.goto 'www.google.com'
browser.element(:id=>'gbqfq' ).send_keys 'capybara'
browser.button(:id => 'gbqfb').click
browser.title
browser.span(:class=>'st').text

browser.close
finish = Time.now
delta += (finish - start)
end
puts delta = delta/n
puts 'watir is done'
puts'---------------------------'
result = '- ' + delta.to_s + ' - watir '
File.open('res.txt', 'a'){|f| f.puts(result)}

#id="gbqfb"
#input id="gbqfq"