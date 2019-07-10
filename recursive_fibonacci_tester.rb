@int_cache = {}

def fib(num)
  return num if num < 2

  return @int_cache[num] if @int_cache[num]

  @int_cache[num] = fib(num - 1) + fib(num - 2)
end

(0..10000).each { |num| puts(fib(num)) }
