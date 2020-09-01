import 'package:quiz/app/controller/home/home_controller.dart';
import 'package:quiz/app/data/provider/api.dart';
import 'package:quiz/app/data/repository/question_repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
          repository:
              QuestionRepository(apiClient: MyApiClient()));
    });
  }
}
