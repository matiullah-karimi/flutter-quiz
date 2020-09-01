import 'package:get/get.dart';
import 'package:quiz/app/data/model/question.dart';
import 'package:quiz/app/data/repository/question_repository.dart';
import 'package:quiz/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final QuestionRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  final _postsList = List<Question>().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  final _post = Question().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  getAll() {
    this.postList = repository.getAll();
  }

  adicionar(post) {}
  //dismissible
  excluir(id) {}
  //dismissible
  editar() {}
  details(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
