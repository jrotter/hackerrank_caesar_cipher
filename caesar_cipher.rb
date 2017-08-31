# Get the inputs
n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i

def encrypt(char,key)
  if char =~ /[A-Z]/
    newvalue = char.ord + key
    while newvalue > 'Z'.ord
      newvalue -= 26
    end
    newvalue.chr
  elsif char =~ /[a-z]/
    newvalue = char.ord + key
    while newvalue > 'z'.ord
      newvalue -= 26
    end
    newvalue.chr
  else
    char
  end
end

answer = ""
s.split("").each do |x|
  answer << encrypt(x,k)
end

puts answer
