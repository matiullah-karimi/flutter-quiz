import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/controller/details/details_controller.dart';
import 'package:quiz/app/ui/widgets/button_widget.dart';

class CardBottomButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GetX<DetailsController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.delete_outline,
              onPressed: _.delete(_.question.id),
              text: 'Delete',
            );
          },
        ),
        GetX<DetailsController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.edit,
              onPressed: _.editar(_.question),
              text: 'Editar',
            );
          },
        )
      ],
    );
  }
}
