import 'package:get/get.dart';
import 'package:quiz/app/controller/details/details_controller.dart';
import 'package:quiz/app/data/provider/api.dart';
import 'package:quiz/app/data/repository/question_repository.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
          repository: QuestionRepository(apiClient: MyApiClient()));
    });
  }
}
