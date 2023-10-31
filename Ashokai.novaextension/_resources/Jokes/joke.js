class Joke {
  constructor(setup, punchline) {
    this.setup = setup;
    this.punchline = punchline;
  }

  tellJoke() {
    console.log(this.setup);
    setTimeout(() => {
      console.log(this.punchline);
    }, 2000);
  }
}

// Create an instance of the Joke class
const joke = new Joke(
  "Why don't scientists trust atoms?",
  "Because they make up everything!"
);

joke.tellJoke();
