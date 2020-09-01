import 'package:get/get.dart';
import 'package:quiz/app/data/model/question.dart';
import 'package:quiz/app/data/repository/question_repository.dart';
import 'package:meta/meta.dart';

import '../../data/model/question.dart';

class DetailsController extends GetxController {
  final QuestionRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

  final _question = Question().obs;
  Question get question => this._question.value;
  set question(Question question) => this._question.value = question;

  editar(question) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }
}
