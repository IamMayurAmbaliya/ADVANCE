// class User {
//   int id;
//   String name;
//   String contact;
//   String email;
//
//   User(this.id, this.name, this.contact, this.email);
//
//   factory User.fromMap({required Map data}) => User(
//         data['id'],
//         data['name'],
//         data['contact'],
//         data['email'],
//       );
// }
class User {
  int id;
  String name;
  String contact;
  String email;

  User({
    required this.id,
    required this.name,
    required this.contact,
    required this.email,
  });

  factory User.fromSQL(Map<String, dynamic> data) => User(
        id: data["id"],
        name: data["name"],
        contact: data["contact"],
        email: data["email"],
      );

  Map<String, dynamic> get getUser => {
        "id": id,
        "name": name,
        "contact": contact,
        "email": email,
      };
}
