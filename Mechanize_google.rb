require 'mechanize'
n=5
delta = 0
(1..n).each do
start = Time.now
agent = Mechanize.new
page = agent.get('http://google.com/')
#pp page
google_form = page.form('f')
#pp google_form.field('q')
google_form.q = 'capybara'
#pp google_form.q
page = agent.submit(google_form)
page.title
finish = Time.now
  delta += (finish - start)
end
puts delta = delta/n
puts  'Mechanize is done'
puts  '---------------------------'
result = '- ' + delta.to_s + ' - mechanize'
File.open('res.txt', 'a'){|f| f.puts(result)}

