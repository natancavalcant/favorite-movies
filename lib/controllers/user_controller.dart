import 'dart:convert';
import 'dart:io';

import 'package:favoritemovies/controllers/auth_controller.dart';
import 'package:http/http.dart' as http;

class UserController {
  var url = Uri.parse("https://favorite-movies-api.herokuapp.com/v1/users");
  var url2 = Uri.parse("https://favorite-movies-api.herokuapp.com/v1/users");

  Future<Map<String, dynamic>> getUserInformation() async {
    var token = await AuthController().getToken();
    var response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.contentTypeHeader: 'application/json'
    });
    print(response.body);
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } catch (exp) {
        return {"err": "falha ao identificar json"};
      }
    }

    return {"err": response.statusCode};
  }

  Future<bool> alterUserInformation(name, password, question, answer) async {
    var token = await AuthController().getToken();
    var email = await AuthController().getEmail();
    print(name);
    var response = await http.patch(url2,
        body: jsonEncode({
          "name": name,
          "email": email,
          "password": password,
          "recovery_question": question,
          "recovery_answer": answer
        }),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          HttpHeaders.contentTypeHeader: 'application/json'
        });

    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  alterTest() {
    alterUserInformation(
        "natan", "123456789", "qual o seu sobrenome", "cavalcante");
    return true;
  }
}
