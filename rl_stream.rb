require './lib/rl'

rl = RL.new

all_lefts = []
all_rights = []
ARGF.each_line{|line|
  term = line.chomp
  l, r = *(rl.detect term)
  all_rights << term if l == 0
  all_lefts << term if r == 0
}

puts '## All rights'
puts '> ' + all_rights.sort_by{|a| -a.length}[0..100].join(' ')
puts
puts '## All lefts'
puts '> ' + all_lefts.sort_by{|a| -a.length}[0..100].join(' ')
