# frozen_string_literal: true

file_name = 'sample.txt'

file_stream = File.open(file_name, 'w')
file_stream.puts 'Hello file 2!'
file_stream.close
