
import 'package:get/get.dart';
import 'package:quiz/app/bindings/create_binding.dart';
import 'package:quiz/app/bindings/details_binding.dart';
import 'package:quiz/app/ui/create/create_page.dart';
import 'package:quiz/app/ui/details/details_page.dart';
import 'package:quiz/app/ui/home/home_page.dart';
part './app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> HomePage(),),
    GetPage(name: Routes.DETAILS, page:()=> DetailsPage(), binding: DetailsBinding()),
    GetPage(name: Routes.CREATE, page:()=> CreateQuizPage(), binding: CreateQuestionBinding()),
  ];
}