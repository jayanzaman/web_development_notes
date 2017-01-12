class Calculator

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def power(a, b)
    a ** b
  end

  def sum(a)
    # sum = 0
    #   a.each do |i|
    #     sum += i
    #   end
    #   sum
    # ------
    # a.reduce(0) {|prev, curr| prev + curr}
    # ------
    # a.reduce(0, :+)
    # -------
    a.reduce(:+) || 0
  end

  def multiply(*args)
    mult = 1
      args.each do |i|
        mult *= i
      end
      mult
    #   -----
    args.reduce(1) {|prev, curr| prev * curr}

  end

  def factorial(n)
    # facto = n
    # i = 1
    #   while i < n do
    #     facto *= i
    #     i+= 1
    #   end
    #     facto == 0? 1: facto
    # end
    # ------
    (1..n).reduce(1) {|curr, prev| prev * curr} || 1
  end

end
