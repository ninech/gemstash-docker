require 'erb'
require 'ostruct'

template    = File.read('httpd.conf.erb')
target_path = '/tmp/httpd.conf'

File.write target_path, ERB.new(template, nil, '-').result

puts "Wrote VHost configuration to #{target_path}."
