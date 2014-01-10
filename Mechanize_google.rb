require 'mechanize'

n=5
delta = 0
(1..n).each do
start = Time.now
agent = Mechanize.new
agent.history.clear

page = agent.get('http://google.com/')
google_form = page.form('f')
google_form.q = 'capybara'
page = agent.submit(google_form)

page.search("//*[@id='resultStats']").text
finish = Time.now
  delta += (finish - start)
end
puts delta = delta/n
puts  'Mechanize is done'
puts  '---------------------------'
result = ' mechanize -  ' + delta.to_s
File.open('res.txt', 'a'){|f| f.puts(result)}

