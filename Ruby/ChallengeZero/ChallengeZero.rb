# Challenge 0
# Marcus Mamott
# September 3rd, 2018 

PST_RATE = 0.07
GST_RATE = 0.05

puts "Please Enter A Subtotal"
subtotal =  gets.chomp.to_f

pst_total = subtotal * PST_RATE
gst_total = subtotal * GST_RATE

grand_total = subtotal + pst_total + gst_total

puts "Subtotal: $" + "#{subtotal}"
puts "PST: $" + "#{pst_total}" + " - 7%"
puts "GST: $" + "#{gst_total}" + " - 5%"
puts "Grand Total: $" + "#{grand_total}"


if (grand_total <= 5) 
  puts 'Pocket Change'
elsif (grand_total > 5 && grand_total < 20)
  puts 'Wallet Time'
else
  puts 'Charge It!'
end