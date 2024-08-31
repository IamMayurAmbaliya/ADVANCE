class Employee {
  int id;
  String name;
  String contact;
  String email;

  Employee({
    required this.id,
    required this.name,
    required this.contact,
    required this.email,
  });

  factory Employee.fromSQL(Map<String, dynamic> json) => Employee(
        id: json["id"],
        name: json["name"],
        contact: json["contact"],
        email: json["email"],
      );

  Map<String, dynamic> get getEmployee => {
        "id": id,
        "name": name,
        "contact": contact,
        "email": email,
      };
}
