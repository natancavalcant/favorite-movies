import 'package:favoritemovies/controllers/films_controller.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/information/films_information_page.dart';
import 'package:favoritemovies/information/widgets/Films_information_widget.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class AppShowFilmWidget extends StatefulWidget {
  final Films _film;
  AppShowFilmWidget(this._film);
  @override
  _AppShowFilmWidgetState createState() => _AppShowFilmWidgetState();
}

class _AppShowFilmWidgetState extends State<AppShowFilmWidget> {
  _getImage(String url) {
    try {
      return Image.network(
        url,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      );
    } catch (exp) {
      return Image.asset(AppImages.errorImage);
    }
  }

  _showFilm(Films film) {
    return GestureDetector(
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FilmsInformationPage(
              FilmsInformationWidget(widget._film.imdb_id),
            ),
          ),
        );
      },
      child: Container(
        width: 174,
        height: 273,
        padding: EdgeInsets.all(2),
        child: Container(
          child: _getImage(film.cover_url),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _showFilm(widget._film);
  }
}
