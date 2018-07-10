MIN = 1
MAX = 1000

puts "Pick a number between #{MIN} and #{MAX}"

print "Are you ready [y]/[n]: "
ready = gets.chomp

if ready == "y"
  lower = MIN
  upper = MAX
  guess = MAX / 2
  count = 0

  loop do
    puts "Is your number #{guess}? [enter], [h]igher or [l]ower"
    answer = gets.chomp
    count = count + 1

    case answer
    when "h"
      puts "Your number is higher than #{guess}..."
      lower = guess + 1
    when "l"
      puts "Your number is lower than #{guess}..."
      upper = guess + 1

    when ""
      puts "I got it! Your number was #{guess} It only took me #{count} guesses"
      break
    else
      puts "That's not the kind of answer I'm looking for."
    end
    guess = (upper + lower) / 2

  end

else
  puts "The only winnning move is not to play. --WOPR"
end