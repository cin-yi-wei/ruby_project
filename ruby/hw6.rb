def count_by(x, n)
  list = []
  n.times{ |times|
    list << x*(times+1)
  }
  list
end

p count_by(1, 5)    # [1, 2, 3, 4, 5]
p count_by(2, 5)    # [2, 4, 6, 8, 10]
p count_by(3, 5)    # [3, 6, 9, 12, 15]
p count_by(50, 5)   # [50, 100, 150, 200, 250]
p count_by(100, 5)  # [100, 200, 300, 400, 500]

=begin
#===================================================>2
def alphabet_position(text)
  # 實作內容
end

p alphabet_position("The sunset sets at twelve o' clock.")
# 印出 "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 字串

p alphabet_position("-.-'")
# 印出 "" 空字串

#===================================================>3

puts "c".is_uppercase?                       # false
puts "C".is_uppercase?                       # true
puts "hello I AM DONALD".is_uppercase?       # false
puts "HELLO I AM DONALD".is_uppercase?       # true
puts "ACSKLDFJSgSKLDFJSKLDFJ".is_uppercase?  # false
puts "ACSKLDFJSGSKLDFJSKLDFJ".is_uppercase?  # true

=end
#===================================================>4

def opposite(n)
  -n
rescue
  "please input a number"
end

puts opposite(1)   # -1
puts opposite(14)  # -14
puts opposite(-34) # 34
puts opposite(0) # 34
puts opposite(nil) # 34

#==========================================>5
def repeat_str(n, s)
  str = ""
  n.times{|x|
    str << s
  }
  puts str
end

repeat_str(6, "I")     # 印出 IIIIII
repeat_str(5, "Hello") # 印出 HelloHelloHelloHelloHello

#==========================================>6
# 找出離某個數字最近的平方數
def nearest_sq(n)
  sqrt_n = Math.sqrt(n).round
  sqrt_n_addone = sqrt_n + 1
  if (sqrt_n_addone**2-n).abs < (sqrt_n**2-n).abs
    return sqrt_n_addone**2
  else
    return sqrt_n**2
  end
end

puts nearest_sq(1)    # 1
puts nearest_sq(2)    # 1
puts nearest_sq(10)   # 9
puts nearest_sq(111)  # 121
puts nearest_sq(9999) # 10000
