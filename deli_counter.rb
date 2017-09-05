
def line(katz_deli)
  current_line = "The line is currently:"
  if katz_deli.count > 0
    katz_deli.each_with_index do |customer, position|
      current_line += " #{position + 1}. #{customer}"
    end
    puts current_line
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.count > 0
    customer_now_serving = katz_deli.shift
    puts "Currently serving #{customer_now_serving}."
  else
    puts "There is nobody waiting to be served!"
  end
end
