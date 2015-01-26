require './lib/rl'

if ARGV.empty?
  warn "usage: ruby rl.rb TERM"
  exit 1
end

term = ARGV.first

rl = RL.new

l, r = *(rl.detect term)

puts "left: #{l}, right: #{r}"

if r != l
  rate = [r,l].max.to_f/(r+l)*100
  which = r > l ? 'right' : 'left'
  puts "#{ rate.floor }% #{which}"
else
  puts "same"
end
