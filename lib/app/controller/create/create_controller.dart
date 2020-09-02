import 'package:quiz/app/controller/home/home_controller.dart';
import 'package:quiz/app/data/model/question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateQuestionController extends GetxController {
  final _optionsControllers = [
    TextEditingController(text: ''),
    TextEditingController(text: ''),
    TextEditingController(text: ''),
    TextEditingController(text: ''),
  ].obs;

  List<TextEditingController> get optionsControllers => this._optionsControllers.value;
  set optionsControllers(optionsControllers) => this._optionsControllers.value = optionsControllers;
  
  /// Add new question
  add(Question question) {
    Get.find<HomeController>().store(question);
  }

  /// Remove option at index
  removeOptionAt(int index) {
    this._optionsControllers.removeAt(index);
  }

  /// Add new option
  addNewOption() {
    this._optionsControllers.add(TextEditingController(text: ''));
  }
}
