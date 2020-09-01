import 'package:get/get.dart';
import 'package:quiz/app/data/model/question.dart';
import 'package:quiz/app/data/repository/question_repository.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {
  final QuestionRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

  final _question = Question().obs;
  get question => this._question.value;
  set question(value) => this._question.value = value;

  editar(question) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }
}
