import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  bool _isAuthenticated = false;
  UserModel? _user;

  bool get isAuthenticated => _isAuthenticated;
  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;

      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;

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
