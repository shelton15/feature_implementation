class UserModel {
  final String token;
  final int userId;

  UserModel({required this.token, required this.userId});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'],
      userId: json['user_id'],
    );
  }
}
