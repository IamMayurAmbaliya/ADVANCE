class UserModel {
  String uid;
  String displayName;
  String email;
  String phoneNumber;
  String photoURL;

  UserModel(
      {required this.uid,
      required this.displayName,
      required this.email,
      required this.phoneNumber,
      required this.photoURL});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      uid: json["uid"],
      displayName: json["displayName"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      photoURL: json["photoURL"]);

  Map<String, dynamic> get toJson => {
        "uid": uid,
        "displayName": displayName,
        "email": email,
        "phoneNumber": phoneNumber,
        "photoURL": photoURL
      };
}

/*class UserModel {
  String id;
  String name;
  String age;
  String email;

  UserModel({
    required this.id,
    required this.name,
    required this.age,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> data) => UserModel(
        id: data["id"],
        name: data["name"],
        age: data["age"],
        email: data["email"],
      );

  Map<String, dynamic> get toJson => {
        "id": id,
        "name": name,
        "age": age,
        "email": email,
      };
}*/
/*
class UserModel {
  String id, name, email, age;

  UserModel(
    this.id,
    this.name,
    this.email,
    this.age,
  );

  factory UserModel.fromMap(Map data) => UserModel(
        data["id"],
        data["name"],
        data["email"],
        data["age"],
      );

  Map<String, dynamic> get toMap => {
        'id': id,
        'name': name,
        'email': email,
        'age': age,
      };
}
 */
