import 'Question.dart';

class QuestionBank {
  List<Question> questions = [];
  int qno = 0;
  QuestionBank() {
    questions.add(Question('Some cats are actually allergic to humans', true));
    questions.add(
        Question('You can lead a cow down stairs but not up stairs.', false));
    questions.add(Question(
        'Approximately one quarter of human bones are in the feet.', true));
    questions.add(Question('A slug\'s blood is green.', true));
    questions.add(
        Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true));
    questions
        .add(Question('It is illegal to pee in the Ocean in Portugal.', true));
    questions.add(Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false));
    questions.add(Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true));
    questions.add(Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false));
    questions.add(Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true));
    questions.add(Question('Google was originally called \"Backrub\".', true));
    questions.add(Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true));
    questions.add(Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true));
  }

  void nextQuestion() {
    if (qno < questions.length - 1) qno++;
  }

  String getQuestion() {
    return questions[qno].q;
  }

  bool getAnswer() {
    return questions[qno].a;
  }

  bool endOfQuestions() {
    if (qno >= questions.length - 1) {
      return true;
    } else
      return false;
  }
}
