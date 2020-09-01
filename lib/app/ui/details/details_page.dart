import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/controller/details/details_controller.dart';
import 'package:quiz/app/controller/home/home_controller.dart';
import 'package:quiz/app/ui/details/widgets/bottom_card_widget.dart';
import 'package:quiz/app/ui/details/widgets/top_card_widget.dart';
import 'package:slimy_card/slimy_card.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(32),
            child: GetX<DetailsController>(
              builder: (_) {
                _.post = Get.find<HomeController>().post;
                var list = Get.find<HomeController>().postList;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("What is your name?", style: TextStyle(fontSize: 18),),
                    for (var post in list)
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 25),
                        margin: EdgeInsets.only(top: 10),
                        child: Text(post.title,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                      )
                  ],
                );
              },
            )),
      ),
    );
  }
}
