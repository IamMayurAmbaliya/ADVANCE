class Riddle {
  String title;
  String question;
  String answer;

  Riddle({
    required this.title,
    required this.question,
    required this.answer,
  });

  factory Riddle.fromJson(Map<String, dynamic> json) => Riddle(
        title: json["title"],
        question: json["question"],
        answer: json["answer"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "question": question,
        "answer": answer,
      };
}
