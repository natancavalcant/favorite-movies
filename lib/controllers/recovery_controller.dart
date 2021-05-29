import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

class RecoveryController {
  Future<Map<String, dynamic>> search(email) async {
    var url = Uri.parse(
        'https://favorite-movies-api.herokuapp.com/v1/auth/get-recovery-question');

    var url2 = url.replace(queryParameters: {'email': '$email'});
    var response = await http.get(url2,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'});
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
}
