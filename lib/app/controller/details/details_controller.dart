import 'package:get/get.dart';
import 'package:quiz/app/data/model/question.dart';
import 'package:quiz/app/data/repository/question_repository.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {
  final QuestionRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

  final _post = Question().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  editar(post) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }
}
