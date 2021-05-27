import 'package:favoritemovies/models/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  UserProvider instance = UserProvider();

  User _user = User.getUser();

  alterUser({username, email, password, question, answer}) {
    _user = User(
        username: username,
        email: email,
        password: password,
        question: question,
        answer: answer);
    notifyListeners();
  }
}
