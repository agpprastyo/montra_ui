import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    required String name,
    required String email,
    required String password,
    required String imageUrl,
    required DateTime createdAt,
  }) = _User;
}

User myUser = User(
  username: 'user123',
  name: 'John Doe',
  email: 'john.doe@example.com',
  password: 'password123',
  imageUrl: 'https://example.com/avatar.jpg',
  createdAt: DateTime.now(),
);
