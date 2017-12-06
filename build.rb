require 'erb'
require 'json'

data = JSON.parse(File.read('slides.json'))

output = ERB.new(File.read('template.html.erb')).result(binding)

File.write('index.html', output)
