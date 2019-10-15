def fibonacci()
  Enumerator.new do |y|
    a = b = 1

    loop do
      y << a
      a, b = b, a + b
    end
  end
end


fibonacci.take(10).each { |i| puts i }

puts "\n----------------"

fibonacci.lazy.select(&:even?).first(10).each { |i| puts i }