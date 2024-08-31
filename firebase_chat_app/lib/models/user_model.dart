class UserModel {
  int uid;
  String displayName;
  String email;
  var photoURL;
  var phoneNumber;

  UserModel(
    this.uid,
    this.displayName,
    this.email,
    this.photoURL,
    this.phoneNumber,
  );

  factory UserModel.fromMap(Map data) => UserModel(
        data["uid"],
        data["displayName"],
        data["email"],
        data["photoURL"],
        data["phoneNumber"],
      );
  Map<String, dynamic> get toMap => {
        'uid': uid,
        'displayName': displayName,
        'email': email,
        'photoURL': photoURL,
        'phoneNumber': phoneNumber,
      };
}
