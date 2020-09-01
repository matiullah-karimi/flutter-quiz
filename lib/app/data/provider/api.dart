import 'package:quiz/app/data/model/option.dart';
import 'package:quiz/app/data/model/question.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  getAll() {
    List<Question> questions = [];
    questions.add(Question(
        id: 1,
        text: 'How are you?',
        description: 'aaaa aafasdf asdf a sdf as',
        options: [
          Option(id: 1, text: 'Option 1', isCorrect: false),
          Option(id: 2, text: 'Option 1', isCorrect: false),
          Option(id: 3, text: 'Option 1', isCorrect: false),
          Option(id: 4, text: 'Option 1', isCorrect: true),
        ]));
    questions.add(Question(
        id: 2,
        text: 'How are you?',
        description: 'aaaa aafasdf asdf a sdf as',
        options: [
          Option(id: 1, text: 'Option 1', isCorrect: false),
          Option(id: 2, text: 'Option 1', isCorrect: true),
          Option(id: 3, text: 'Option 1', isCorrect: false),
          Option(id: 4, text: 'Option 1', isCorrect: false),
        ]));
    questions.add(Question(
        id: 3,
        text: 'How are you?',
        description: 'aaaa aafasdf asdf a sdf as',
        options: [
          Option(id: 1, text: 'Option 1', isCorrect: false),
          Option(id: 2, text: 'Option 1', isCorrect: false),
          Option(id: 3, text: 'Option 1', isCorrect: true),
          Option(id: 4, text: 'Option 1', isCorrect: false),
        ]));
    questions.add(Question(
        id: 4,
        text: 'How are you?',
        description: 'aaaa aafasdf asdf a sdf as',
        options: [
          Option(id: 1, text: 'Option 1', isCorrect: true),
          Option(id: 2, text: 'Option 1', isCorrect: false),
          Option(id: 3, text: 'Option 1', isCorrect: false),
          Option(id: 4, text: 'Option 1', isCorrect: false),
        ]));
    questions.add(Question(
        id: 5,
        text: 'How are you?',
        description: 'aaaa aafasdf asdf a sdf as',
        options: [
          Option(id: 1, text: 'Option 1', isCorrect: false),
          Option(id: 2, text: 'Option 1', isCorrect: true),
          Option(id: 3, text: 'Option 1', isCorrect: false),
          Option(id: 4, text: 'Option 1', isCorrect: true),
        ]));

    return questions;
  }

  getId(id) async {}
}
