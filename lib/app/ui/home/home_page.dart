import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/controller/home/home_controller.dart';
import 'package:quiz/app/ui/widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<HomeController>(
          initState: (state) {
            Get.find<HomeController>().getAll();
          },
          builder: (_) {
            return _.questionList.length < 1
                ? LoadingWidget()
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_.questionList[index].text),
                        subtitle: Text(_.questionList[index].description),
                        onTap: () => _.details(_.questionList[index]),
                      );
                    },
                    itemCount: _.questionList.length,
                  );
          },
        ),
      ),
    );
  }
}
