#!/usr/bin/ruby
#<Encoding:UTF-8>

ka = "./e"
ile = 2000
#dodaj=910
dodaj=0
znaki = ["2", "3", "4", "5", "6", "7", "8", "9", "b", "d", "f", "g", "h", "i", "j", "k", "m", "n", "p", "q", "r", "t", "v", "w", "y" ]
#znaki = ["2", "3" ]
znaki.each_with_index{|z, j|
# system "mkdir -p #{ka}/#{z}"
 puts "#{ka}/#{z}"
 ile.times{|i|
  s = "php -f ./my.php '#{z}' > ./tt.jpg"
  system s
  system "convert tt.jpg -trim -resize 40x40 #{ka}/z_#{z}#{(i+dodaj).to_s}.jpg"
  system "echo '#{j} 0.1 0.1 0.99 0.99' > #{ka}/z_#{z}#{(i+dodaj).to_s}.txt"
  }
 }
#system "php -f ./my.php '  to' > #{wynik}"
