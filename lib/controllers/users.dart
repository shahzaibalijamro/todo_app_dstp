import '../models/user_model.dart';

final List<User> userList = [
  User(name: "Shahzaib", password: "12345", email: "shahzaib@gmail.com"),
];

Future<User?> findUser({
  required String email,
  required String password,
}) async {
  await Future.delayed(Duration(seconds: 5));
  for (final user in userList) {
    if (user.email == email && user.password == password) {
      return user;
    }
  }
  return null;
}
