# AOC 2016 Day 3 Problem 1

input = File.read(File.join(__dir__, "input.txt"))

ans = input.lines.count do |line|
  sides = line.split.map(&:to_i).sort
  sides[0] + sides[1] > sides[2]
end

puts ans
