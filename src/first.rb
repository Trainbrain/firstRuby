class First
  def hello
    puts "Hello!"
  end
end

x = First.new
x.hello

class A
  Dans_age = 38

  def initialize(f = 0)
    @foo = f
    @bar = 0
  end

  def self.mmm
    45
  end

  def self.reset_bar
    @@bar = 0
  end

  attr_accessor :beer

  def m1
    34
  end

  def m2(x, y)
    z = 7
    if x > y
      false
    else
      x + y * z
    end
    z += 3
  end

  def m3
    @foo = 0
  end

  def m4 x
    @foo += x
    @bar += 1
  end

  def foo
    @foo
  end

  def bar
    @@bar
  end
end

a = A.new
puts A.mmm
puts A::Dans_age
puts a.m1
puts a.m2(3, 4)
puts a.m3
puts a.m4 2
puts a.foo
a.beer = 7
puts a.beer

class B
  def m1
    4
  end

  def m3 x
    x.abs * 2 + self.m1
  end

end

b = B.new
puts b.m1
puts b.m3 5
puts -5.abs

class C
  def m1
    print "hi "
    self
  end

  def m2
    print "bye "
    self
  end

  def m3
    print "\n"
    self
  end

  def silly a
    (yield a) + (yield 42)
  end
end

c = C.new
puts c.silly(5) {|b| b * 2}

c.m1.m2.m3