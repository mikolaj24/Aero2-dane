#!/usr/bin/env ruby
# encoding: utf-8
#program tworzy train.txt i test.txt

def pliktxt(katalog)

File.open(katalog+'.txt', 'w') { |plik|

 Dir.foreach(katalog) do |i|
  next if i == '.' or i == '..'
  if i =~ /.jpg$/ then
   plik.puts "./data/#{katalog}/#{i}"
  end
 end

}

end

pliktxt('nauka')
pliktxt('test')