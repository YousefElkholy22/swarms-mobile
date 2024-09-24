class UserModel {
  User user;
  String token;
  String message;
  String status;

  UserModel({
    required this.user,
    required this.token,
    required this.message,
    required this.status,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: User.fromJson(json["user"]),
        token: json["token"],
        message: json["message"],
        status: json["status"],
      );
}

class User {
  String name;
  String email;
  int id;

  User({
    required this.name,
    required this.email,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        id: json["id"],
      );
}
