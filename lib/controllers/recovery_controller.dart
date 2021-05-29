import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

class RecoveryController {
  final url = Uri.parse(
      'https://favorite-movies-api.herokuapp.com/v1/auth/get-recovery-question');
  final url2 = Uri.parse(
      'https://favorite-movies-api.herokuapp.com/v1/auth/recovery-password');
  Future<Map<String, dynamic>> search(email) async {
    var response = await http.post(url, body: jsonEncode({'email': email}));

    print(response.statusCode);
    var body;
    try {
      body = json.decode(response.body);
    } catch (exp) {
      return {'err': '$exp'};
    }

    if (body.containsKey('recovery_question')) {
      return body;
    }
    return {'err': body['message']};
  }

  Future<Map<String, dynamic>> recovery(email, answer, newPassword) async {
    var response = await http.post(url2,
        body: jsonEncode({
          'email': email,
          'recovery_answer': answer,
          'new_password': newPassword
        }));

    print(response.statusCode);
    var body;
    try {
      body = json.decode(response.body);
    } catch (exp) {
      return {'err': '$exp'};
    }
    print(body);
    if (response.statusCode == 200) {
      return {"password_changed": body['message']};
    }
    return {'err': body['message']};
  }
}
