# AOC 2016 Day 2 Problem 1

input = File.read(File.join(__dir__, "input.txt"))

x = 1
y = 1

ans = ""

keys = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

input.each_line do |line|
  line.each_char do |char|
    case char
    when "U"
      y -= 1
    when "L"
      x -= 1
    when "D"
      y += 1
    when "R"
      x += 1
    end

    x = [[x, 2].min, 0].max
    y = [[y, 2].min, 0].max
  end

  ans += keys[y][x].to_s
end

puts ans
