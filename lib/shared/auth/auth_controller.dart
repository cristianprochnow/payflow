import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      _user = user;

      Navigator.pushReplacementNamed(context, "/home");
    } else {
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  Future<void> saveUser(UserModel user) async {
    final sharedPreferencesInstance = await SharedPreferences.getInstance();

    await sharedPreferencesInstance.setString('user', user.toJson());

    return;
  }

  Future<void> hasCurrentUser(BuildContext context) async {
    final sharedPreferencesInstance = await SharedPreferences.getInstance();

    if (sharedPreferencesInstance.containsKey('user')) {
      final jsonResponse = sharedPreferencesInstance.get('user') as String;

      setUser(context, UserModel.fromJson(jsonResponse));

      return;
    } else {
      setUser(context, null);
    }
  }
}
