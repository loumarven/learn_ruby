#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.reduce(0) { |sum, element| sum + element }
end

def multiply(a, b, *c)
  product = a * b
  c.reduce(product) { |num, product| num * product }
end

def power(num, exp)
  num**exp
end

def factorial(num)
  if num == 0
    return 1
  elsif num < 0
    return 'ERROR'
  end

  f = 1
  (f..num).reduce(f) { |num, f| num * f }
end
