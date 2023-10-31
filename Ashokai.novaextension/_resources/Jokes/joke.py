import time

class Joke:
    def __init__(self, question, answer):
        self.question = question
        self.answer = answer

    def tell_joke(self):
        print(self.question)
        time.sleep(2)
        print(self.answer)

# Create an instance of the Joke class
joke = Joke(
    "Why don't cats play poker in the wild?",
    "Too many cheetahs!"
)

# Call the tell_joke method to share the joke
joke.tell_joke()
