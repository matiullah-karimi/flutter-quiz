class Option {
  int id;
  String text;
  bool isCorrect;

  Option({this.id, this.text, this.isCorrect});

  Option.fromJson(Map<String, dynamic> json) {
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
