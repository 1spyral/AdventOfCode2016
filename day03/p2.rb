# AOC 2016 Day 3 Problem 2

input = File.read(File.join(__dir__, "input.txt"))

def check(a, b, c)
  sides = [a, b, c].map(&:to_i).sort
  sides[0] + sides[1] > sides[2]
end

ans = input.lines.map(&:split).each_slice(3).sum do |batch|
  (0..2).count do |i|
    check(batch[0][i], batch[1][i], batch[2][i])
  end
end

puts ans
