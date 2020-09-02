import 'package:quiz/app/controller/home/home_controller.dart';
import 'package:quiz/app/ui/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: Get.find<HomeController>().create,
        child: Icon(Icons.add),
      ),
    );
  }

  /// Build body of the screen
  Container _buildBody() {
    return Container(
      child: GetX<HomeController>(
        initState: (state) {
          Get.find<HomeController>().getAll();
        },
        builder: (controller) {
          if (controller.questionList.length < 1) {
            return LoadingWidget();
          } else {
            return _buildListView(controller);
          }
        },
      ),
    );
  }

  /// Build quesitons list view
  ListView _buildListView(HomeController controller) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(controller.questionList[index].text),
          subtitle: Text(controller.questionList[index].description),
          onTap: () => controller.details(controller.questionList[index]),
        );
      },
      itemCount: controller.questionList.length,
    );
  }
}
