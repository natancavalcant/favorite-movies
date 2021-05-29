import 'dart:convert';

import 'package:http/http.dart' as http;

class SignupController {
  Future<int> signup(username, email, password, question, answer) async {
    var url = Uri.parse("https://favorite-movies-api.herokuapp.com/v1/users");
    var response = await http.post(url,
        body: jsonEncode({
          "name": username,
          "email": email,
          "password": password,
          "recovery_question": question,
          "recovery_answer": answer
        }));
    print(response.statusCode);
    return response.statusCode;
  }

  test() async {
    var url2 = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http
        .post(url2, body: {'title': 'oi2', 'body2': 'kkkk', 'userId': '1'});
    print("${response.body}");
  }
}
