// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:edumate_mobile/domain/entities/user.dart';

class UserModel {
  final String email;
  final String username;

  UserModel({required this.email, required this.username});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      username: map['firstname'] as String,
    );
  }
}

extension UserXModel on UserModel {
  UserEntity toEntity() {
    return UserEntity(email: email, username: username);
  }
}
