# AOC 2016 Day 3 Problem 2
# Alternate solution using transpose

input = File.read(File.join(__dir__, "input.txt"))

def check(sides)
  sides.sort!
  sides[0] + sides[1] > sides[2]
end

ans = input.lines.map do |line| line.split.map(&:to_i) end
           .each_slice(3)
           .flat_map(&:transpose)
           .count do |triangle|
  check(triangle)
end

puts ans
