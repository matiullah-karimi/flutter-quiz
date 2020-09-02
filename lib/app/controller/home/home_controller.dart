import 'package:get/get.dart';
import 'package:quiz/app/data/model/question.dart';
import 'package:quiz/app/data/repository/question_repository.dart';
import 'package:quiz/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

import '../../data/model/question.dart';

class HomeController extends GetxController {
  final QuestionRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  final _questionsList = List<Question>().obs;
  List<Question> get questionList => this._questionsList.value;
  set questionList(List<Question> questions) =>
      this._questionsList.value = questions;

  final _question = Question().obs;
  Question get question => this._question.value;
  set question(Question question) => this._question.value = question;

  getAll() {
    this.questionList = repository.getAll();
  }

  details(question) {
    this.question = question;
    Get.toNamed(Routes.DETAILS);
  }

  create() {
    Get.toNamed(Routes.CREATE);
  }

  store(Question question) {
    this.questionList = [...this.questionList, question];
  }
}
