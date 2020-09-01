class Question {
  int id;
  String text;
  String description;

  Question({this.id, this.text, this.description});

  Question.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.text = json['text'];
    this.description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.text;
    data['description'] = this.description;
    return data;
  }
}
