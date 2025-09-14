# AOC 2016 Day 2 Problem 2

input = File.read(File.join(__dir__, "input.txt"))

x = 0
y = 2

n = nil
a, b, c, d = "A", "B", "C", "D"

keys = [
  [n, n, 1, n, n],
  [n, 2, 3, 4, n],
  [5, 6, 7, 8, 9],
  [n, a, b, c, n],
  [n, n, d, n, n]
]

ans = ""

input.each_line do |line|
  line.each_char do |char|
    prev_x, prev_y = x, y

    case char
    when "U"
      y -= 1
    when "D"
      y += 1
    when "L"
      x -= 1
    when "R"
      x += 1
    end

    x, y = [[x, 0].max, 4].min, [[y, 0].max, 4].min
    x, y = prev_x, prev_y if keys[y][x].nil?
  end

  ans += keys[y][x].to_s
end

puts ans
