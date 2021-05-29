import 'package:favoritemovies/widgets/app_bar_widget.dart';
import 'package:favoritemovies/home/widgets/films/app_films_bar_widget.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBarWidget(context),
        body: AppFilmsBarWidget(),
      ),
    );
  }
}
