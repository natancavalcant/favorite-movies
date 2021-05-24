import 'package:favoritemovies/home/app_home_page.dart';
import 'package:favoritemovies/information/films_information_page.dart';
import 'package:favoritemovies/login/app_login_page.dart';
import 'package:favoritemovies/login/app_reset_password_page.dart';
import 'package:favoritemovies/login/app_search_username_page.dart';
import 'package:favoritemovies/signin/app_signin_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FavoriteMovies',
      home: AppLoginPage(),
    );
  }
}
