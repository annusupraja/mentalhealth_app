class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I feel most energtic and focused:",
    [
      Answer("In the morning", true),
      Answer("During the afternoon and early evening ", false),
      Answer("Late at night", true),
    ],
  ));

  list.add(Question(
    "When I walk, I tend to do it",
    [
      Answer("Fairly fast, with long steps", true),
      Answer("Fairly fast, with small steps", false),
      Answer("Less fast, head up looking the world in the face", true),
      Answer("Less fast, head down", false),
    ],
  ));

  list.add(Question(
    "When you speak to people you tend to:",
    [
      Answer("Stand with your arms folded", true),
      Answer("Have your hands clasped", false),
      Answer("Have one or both of your hands on your hips", false),
      Answer("Touch or push the person to whom you are talking", false),
    ],
  ));

  list.add(Question(
    "When you are relaxed, you usually sit with:",
    [
      Answer("Your knees bent, with your legs neatly side by side", true),
      Answer("Your legs crossed", false),
      Answer("Your legs stretched out or straight", true),
      Answer("One leg curled under you", false)
    ],
  ));
  list.add(Question(
    "When you find something really funny, you usually give",
    [
      Answer("A big appreciative laugh", true),
      Answer("A laugh but not a loud one", true),
      Answer("A quiet chukle", false),
      Answer("A sheepish smile", false)
    ],
  ));
  list.add(Question(
    "When you enter a party or social gathering, you tend to",
    [
      Answer("Make a loud entrance, so that everyone notices you", true),
      Answer(
          "Make a quiet entrance, looking around for someone you know", true),
      Answer("Make the quietest entrance, trying to stay unnoticed", false)
    ],
  ));
  list.add(Question(
    "If you are unfocused on a task you are interrupted, you're likely to",
    [
      Answer("Welcome the break", true),
      Answer("Feel extremely irritated", false),
      Answer("Very between these two extremes", true)
    ],
  ));
  list.add(Question(
    "Your favorite color is:",
    [
      Answer("Red/orange", true),
      Answer("Bkack", false),
      Answer("White", true),
      Answer("Green", false)
    ],
  ));

  list.add(Question(
    "Before you fall asleep, you're usually lying",
    [
      Answer("Streched out on your back", true),
      Answer("Streched out face down on your stomach", false),
      Answer("On your side, slightly curled", true),
      Answer("With your head on one arm", false)
    ],
  ));

  list.add(Question(
    "When your dream, you're often:",
    [
      Answer("Falling", true),
      Answer("Fighting or struggling", false),
      Answer("Searched for something or somebody", true),
      Answer("Your dreams are always pleasant", false)
    ],
  ));

  return list;
}
