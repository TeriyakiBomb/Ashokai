def tell_joke(joke_number)
  if joke_number == 1
    puts "Why was JavaScript at the coffee shop?"
    puts "Because it heard the server was really good with Java!"
  elsif joke_number == 2
    puts "Why do JavaScript developers prefer promises?"
    puts "Because they don't like callbacks, they prefer to keep their word!"
  else
    puts "Sorry, I only know two JavaScript jokes!"
  end
end

tell_joke(1)
tell_joke(2)
