import 'package:favoritemovies/controllers/auth_controller.dart';
import 'package:favoritemovies/home/app_home_page.dart';
import 'package:favoritemovies/information/films_information_page.dart';
import 'package:favoritemovies/login/app_login_page.dart';
import 'package:favoritemovies/search/app_search_films.dart';
import 'package:favoritemovies/search/widgets/app_result_search_widget.dart';

import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FavoriteMovies',
      home: AppLoginPage(),
    );
  }
}
