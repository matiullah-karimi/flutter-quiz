import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/controller/details/details_controller.dart';
import 'package:quiz/app/ui/theme/app_text_theme.dart';

class CardTopCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(16),
        child: GetX<DetailsController>(
          builder: (_) => Text(
            _.question.text,
            style: cardTextStyle,
          ),
        ),
      ),
    );
  }
}
