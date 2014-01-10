require 'watir-webdriver'

start = Time.now
browser = Watir::Browser.new :phantomjs
browser.driver.manage.timeouts.implicit_wait = 5
browser.goto "www.google.com"
puts browser.url
puts browser.title
#browser.div(:xpath => "//*[@id='gs_tti0']" ).send_keys 'watir'
#browser.button(:id => "gbqfb").click
#puts browser.link(:xpath => "//*[@id='rso']/li[1]/div/h3/a").text
browser.close
finish = Time.now
puts finish - start
puts "phantom is done"
puts"---------------------------"

#input id="gbqfq"