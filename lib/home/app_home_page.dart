import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/widgets/app_bar_widget.dart';
import 'package:favoritemovies/home/widgets/films/app_films_bar_widget.dart';
import 'package:favoritemovies/home/widgets/films/app_categories_films_widget.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: AppFilmsBarWidget(),
    );
  }
}
