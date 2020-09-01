import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/controller/details/details_controller.dart';
import 'package:quiz/app/controller/home/home_controller.dart';
import 'package:quiz/app/data/model/option.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(32),
          child: GetX<DetailsController>(
            builder: (_) {
              _.question = Get.find<HomeController>().question;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _.question.text,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  for (Option option in _.question.options)
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 25,
                      ),
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      child: Text(
                        option.text,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(1, 1),
                          )
                        ],
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
