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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                FilmsInformationPage(FilmsInformationWidget(widget._film)),
          ),
        );
      },
      child: Container(
        width: 144.52,
        height: 216.78,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${widget._film.assetImage}'),
          ),
        ),
      ),
    );
  }
}
