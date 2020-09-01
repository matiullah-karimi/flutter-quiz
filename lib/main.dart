import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:quiz/app/bindings/home_binding.dart';
import 'package:quiz/app/routes/app_pages.dart';
import 'package:quiz/app/translations/app_translations.dart';
import 'package:quiz/app/ui/home/home_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: HomeBinding(),
        initialRoute: Routes.INITIAL,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        home: HomePage(),
        locale: Locale('en', 'US'),
        translationsKeys: AppTranslation.translations,
    )
  );
}

