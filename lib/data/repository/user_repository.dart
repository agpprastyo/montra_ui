import 'package:montra_ui/data/models/user.dart';

class UserRepository {
  Future<User?> getUser() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => myUser,
    );
  }
}
