class UserModel {
  final String name;
  final String email;
  final String username;

  UserModel({required this.name, required this.email, required this.username});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'] ?? '',
        email: json['email'] ?? '',
        username: json['username'] ?? '');
  }
}

class UserModelList {
  UserModelList({
    required this.users,
  });

  final List<UserModel> users;
  factory UserModelList.fromMap(Map<String, dynamic> json) => UserModelList(
        users: List<UserModel>.from(
            (json[''] ?? []).map((x) => UserModelList.fromMap(x))).toList(),
      );
}
