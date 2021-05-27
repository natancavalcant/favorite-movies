import 'package:favoritemovies/models/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  UserProvider instance = UserProvider();

  String username = "";
  String email = "";
  String password = "";
  String question = "";
  String answer = "";

  User getUser(covariant) {
    return User(
        username: username,
        email: email,
        password: password,
        question: question,
        answer: answer);
  }
}
