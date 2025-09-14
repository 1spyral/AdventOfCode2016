# AOC 2016 Day 1 Problem 2

require 'set'

input = File.read(File.join(__dir__, "input.txt"))

instructions = input.split(", ")

dir = 0
x = 0
y = 0

seen = Set.new

instructions.each do |instruction|
  case instruction[0]
  when "L"
    dir -= 1
    dir %= 4
  when "R"
    dir += 1
    dir %= 4
  end

  ans = nil

  instruction[1..].to_i.times do
    case dir
    when 0
      y += 1
    when 1
      x += 1
    when 2
      y -= 1
    when 3
      x -= 1
    end

    if seen.include?([x, y])
      ans = x.abs + y.abs
      break
    end

    seen.add([x, y])
  end

  unless ans.nil?
    puts ans
    break
  end
end