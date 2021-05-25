import 'package:favoritemovies/home/widgets/films/app_search_films_bar_widget.dart';
import 'package:favoritemovies/information/widgets/Films_information_widget.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';

class FilmsInformationPage extends StatelessWidget {
  final FilmsInformationWidget _filmInformation;
  FilmsInformationPage(this._filmInformation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarInformationWidget(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppSearchFilmsBarWidget(),
                  _filmInformation,
                ],
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: AppAuthorBarWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}
