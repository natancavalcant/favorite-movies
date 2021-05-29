import 'dart:convert';
import 'dart:io';

import 'package:favoritemovies/controllers/auth_controller.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:http/http.dart' as http;

class FilmsController {
  var url = Uri.parse("https://favorite-movies-api.herokuapp.com/v1/movies");

  Future<List<Films>> getMoviesByName(String search) async {
    var client = http.Client();
    List<Films> films = [];
    var token = await AuthController().getToken();
    try {
      var request = await client.get(
          Uri.parse(
              "https://favorite-movies-api.herokuapp.com/v1/movies?name=$search"),
          headers: {
            HttpHeaders.authorizationHeader:
                'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2fQ.c2Wr0Gz-kVRj6FHQiQ4HlNCmzXOTmA_KL_IYreOUD98',
            HttpHeaders.contentTypeHeader: 'application/json'
          });
      var response = json.decode(request.body);

      if (response.toString().isNotEmpty) {
        for (var film in response) {
          films.add(Films.fromJson(film));
        }
      }

      print(response);
      print(token);
      return films;
    } finally {
      client.close();
    }
  }

  Future<int> test() async {
    var cliente = http.Client();
    var token = await AuthController().getToken();

    try {
      var response = await cliente.get(
          Uri.parse("https://favorite-movies-api.herokuapp.com/v1/movies"),
          headers: {
            HttpHeaders.authorizationHeader:
                'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2fQ.c2Wr0Gz-kVRj6FHQiQ4HlNCmzXOTmA_KL_IYreOUD98',
            HttpHeaders.contentTypeHeader: 'application/json'
          });
      print(response.body);
      print(token);
    } finally {
      cliente.close();
    }
    return 1;
  }
}
