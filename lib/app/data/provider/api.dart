import 'package:quiz/app/data/model/question.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  getAll() {
    List<Question> questions = [];
    questions.add(Question(id: 1, title: 'How are you?', body: 'aaaa aafasdf asdf a sdf as'));
    questions.add(Question(id: 2, title: 'How are you?', body: 'aaaa aafasdf asdf a sdf as'));
    questions.add(Question(id: 3, title: 'How are you?', body: 'aaaa aafasdf asdf a sdf as'));
    questions.add(Question(id: 4, title: 'How are you?', body: 'aaaa aafasdf asdf a sdf as'));
    questions.add(Question(id: 5, title: 'How are you?', body: 'aaaa aafasdf asdf a sdf as'));

    return questions;
  }

  getId(id) async {}
}
