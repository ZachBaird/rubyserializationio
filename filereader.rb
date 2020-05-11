# frozen_string_literal: true

def read_whole_file
  file = File.open('sample.txt', 'r')
  contents = file.read
  puts contents
end

def demonstrating_readlines
  File.open('sample.txt').readlines.each do |line|
    puts line
  end
end

def demonstrating_readline_with_eof
  file = File.open('sample.txt', 'r')

  until file.eof?
    line = file.readline
    puts line
  end
end

demonstrating_readline_with_eof
