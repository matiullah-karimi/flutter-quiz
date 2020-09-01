import 'package:quiz/app/data/model/question.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  getAll() {
    List<Question> questions = [];
    questions.add(Question(
      id: 1,
      text: 'How are you?',
      description: 'aaaa aafasdf asdf a sdf as',
    ));
    questions.add(Question(
      id: 2,
      text: 'How are you?',
      description: 'aaaa aafasdf asdf a sdf as',
    ));
    questions.add(Question(
      id: 3,
      text: 'How are you?',
      description: 'aaaa aafasdf asdf a sdf as',
    ));
    questions.add(Question(
      id: 4,
      text: 'How are you?',
      description: 'aaaa aafasdf asdf a sdf as',
    ));
    questions.add(Question(
      id: 5,
      text: 'How are you?',
      description: 'aaaa aafasdf asdf a sdf as',
    ));

    return questions;
  }

  getId(id) async {}
}
