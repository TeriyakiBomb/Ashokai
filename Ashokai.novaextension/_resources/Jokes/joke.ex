defmodule DogJokes do
  def tell_joke do
    IO.puts("Why did the dog sit in the shade?")
    IO.puts("Because it didn't want to be a hot dog!")
  end

  def another_joke do
    IO.puts("What do you call a dog magician?")
    IO.puts("A labracadabrador!")
  end
end

DogJokes.tell_joke()
DogJokes.another_joke()
