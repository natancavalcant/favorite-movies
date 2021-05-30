import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/information/films_information_page.dart';
import 'package:favoritemovies/information/widgets/Films_information_widget.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:flutter/material.dart';

class AppFilmWidget extends StatefulWidget {
  final Films _film;
  AppFilmWidget(this._film);
  @override
  _AppFilmWidgetState createState() => _AppFilmWidgetState();
}

class _AppFilmWidgetState extends State<AppFilmWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) =>
          //         FilmsInformationPage(FilmsInformationWidget(widget._film)),
          //   ),
          // );
        },
        child: Container(
          width: 148.52,
          height: 220.78,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.movieBanner),
            ),
          ),
        ),
      ),
    );
  }
}
