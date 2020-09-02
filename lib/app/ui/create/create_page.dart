import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/controller/create/create_controller.dart';
import 'package:quiz/app/data/model/option.dart';
import 'package:quiz/app/data/model/question.dart';

class CreateQuizPage extends GetView<CreateQuestionController> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new quesiton'),
      ),
      body: GetX<CreateQuestionController>(
        // init: CreateQuestionController(),
        initState: (_) {},
        builder: (CreateQuestionController controller) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildTextFormField(textController, 'Question',
                      'Please enter the question text'),
                  _buildTextFormField(descriptionController, 'Description',
                      'Please enter the question description'),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Options',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                  ),
                  ..._buildOptions(controller),
                  _buildAddNewOptionButton(controller),
                  _buildSubmitButton(context, controller),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container _buildAddNewOptionButton(CreateQuestionController controller) {
    return Container(
      alignment: Alignment.centerLeft,
      child: RaisedButton(
        onPressed: controller.addNewOption,
        child: Text("Add new option"),
        color: Colors.blue[100],
      ),
    );
  }

  _buildOptions(CreateQuestionController controller) {
    List<Row> rows = [];
    for (var i = 0; i < controller.optionsControllers.length; i++) {
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: _buildTextFormField(
                controller.optionsControllers[i],
                'Option ${i + 1}',
                'Please enter your option',
              ),
            ),
            InkWell(
              child: Icon(Icons.close),
              onTap: () {
                controller.removeOptionAt(i);
              },
            )
          ],
        ),
      );
    }

    return rows;
  }

  TextFormField _buildTextFormField(controller, label, hint) {
    return TextFormField(
      validator: _validateTextField,
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
      ),
    );
  }

  String _validateTextField(value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }

    return null;
  }

  _buildSubmitButton(context, CreateQuestionController controller) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(top: 36),
      child: RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {

            controller.add(Question(text: textController.text, description: descriptionController.text, id: 23, options: controller.optionsControllers.map((option) => Option(id: ))));
          }
        },
        child: Text(
          'Submit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        color: Colors.primaries[2],
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      ),
    );
  }
}
