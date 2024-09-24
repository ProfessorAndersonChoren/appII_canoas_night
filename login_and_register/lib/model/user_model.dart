import 'package:shared_preferences/shared_preferences.dart';

class UserModel {
  final String email;
  final String password;

  const UserModel({
    required this.email,
    required this.password,
  });

  Future<void> register() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('user_email', email);
    await sharedPreferences.setString('user_password', password);
  }

  Future<bool> login() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final storedEmail = sharedPreferences.getString('user_email');
    final storedPassword = sharedPreferences.getString('user_password');
    return storedEmail == email && storedPassword == password;
  }
}
