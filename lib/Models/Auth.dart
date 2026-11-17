
class Auth {
  final String message;
  final String status;
  final UserModel userModel;

  Auth({required this.message, required this.status, required this.userModel});

  factory Auth.fromJson(Map<String, dynamic> json) {
    return Auth(
      message: json["Messge"],
      status: json["Status"],
      userModel: UserModel.fromMap(json["user"]),
    );
  }
}

class UserModel {
  final int id;
  final String name;
  final String email;
  final String password;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      email: json["Email"],
      password: json["PassWord"],
      phone: json["Phone"],
    );
  }
}