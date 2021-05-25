import 'package:favoritemovies/models/films.dart';
import 'package:favoritemovies/widgets/app_film_widget.dart';
import 'package:flutter/material.dart';

class AppFilmsWidget extends StatefulWidget {
  final String _categorie;
  final List<Films> films = Films.getFilms();
  AppFilmsWidget(this._categorie);
  @override
  _AppFilmsWidgetState createState() => _AppFilmsWidgetState();
}

class _AppFilmsWidgetState extends State<AppFilmsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216.78,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //padding: EdgeInsets.only(left: 2),
        itemCount: 10,
        itemBuilder: (context, i) {
          if (i >= 10) {}
          return AppFilmWidget(widget.films[i]);
        },
      ),
    );
  }
}
