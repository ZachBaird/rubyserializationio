# frozen_string_literal: true

puts 'that worked' if File.exist?('sample.txt')

dirname = 'data-files'

Dir.mkdir(dirname) unless Dir.exist? dirname

if Dir.exist? dirname
  File.open("#{dirname}/test.txt", 'w') do |file|
    file.write('hey!')
  end
end
