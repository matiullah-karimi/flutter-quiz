import 'package:quiz/app/controller/create/create_controller.dart';
import 'package:get/get.dart';

class CreateQuestionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateQuestionController>(
      () => CreateQuestionController(),
    );
  }
}
