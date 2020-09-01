class Question {
  int id;
  String text;
  bool isCorrect;

  Question({this.id, this.text, this.isCorrect});

  Question.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.text = json['text'];
    this.isCorrect = json['isCorrect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.text;
    data['isCorrect'] = this.isCorrect;
    return data;
  }
}
