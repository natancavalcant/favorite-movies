import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthController {
  var _url = Uri.parse(
      "https://favorite-movies-api.herokuapp.com/v1/auth/generate-token");
  final _storage = FlutterSecureStorage();

  saveToken({token}) async {
    await _storage.write(key: 'token', value: token);
  }

  saveEmail({email}) async {
    await _storage.write(key: email, value: email);
  }

  getToken() async {
    var token = await _storage.read(key: 'token');
    return token;
  }

  getEmail() async {
    var email = await _storage.read(key: 'email');
    return email;
  }

  verifyToken() async {
    var key = await _storage.read(key: 'token');
    if (key != '') {
      return true;
    }
    print(key);
    return false;
  }

  cleanCache() async {
    return await _storage.deleteAll();
  }

  Future<Map<String, dynamic>> auth({email, password}) async {
    cleanCache();
    var response = await http.post(_url,
        body: jsonEncode({'email': email, 'password': password}));
    var token = json.decode(response.body);
    print("verify");
    verifyToken();
    print(token);
    if (token.containsKey('token')) {
      saveEmail(email: email);
      saveToken(token: token['token']);
      return token;
    }

    return {'err': token['message']};
  }
}
