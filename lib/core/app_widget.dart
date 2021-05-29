import 'package:favoritemovies/login/app_login_page.dart';

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
