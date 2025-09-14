# AOC 2016 Day 1 Problem 1

input = File.read(File.join(__dir__, "input.txt"))

instructions = input.split(", ")

dir = 0
x = 0
y = 0

instructions.each do |instruction|
  case instruction[0]
  when "L"
    dir -= 1
    dir %= 4
  when "R"
    dir += 1
    dir %= 4
  end

  case dir
  when 0
    y += instruction[1..].to_i
  when 1
    x += instruction[1..].to_i
  when 2
    y -= instruction[1..].to_i
  when 3
    x -= instruction[1..].to_i
  end
end

ans = x.abs + y.abs

puts ans
