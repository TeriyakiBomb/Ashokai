<? class Joke {
  private $question;
  private $answer;

  public function __construct($question, $answer) {
    $this->question = $question;
    $this->answer = $answer;
  }

  public function tellJoke()
    echo $this->question . PHP_EOL;
    sleep(2);
    echo $this->answer . PHP_EOL;
  }
}

$joke = new Joke(
  "Why don't skeletons fight each other?",
  "They don't have the guts!"
);

$joke->tellJoke(); ?>
