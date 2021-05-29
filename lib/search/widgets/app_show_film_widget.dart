import 'package:favoritemovies/core/app_images.dart';
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
  _showFilm(Films film) {
    return Container(
      width: 174,
      height: 273,
      padding: EdgeInsets.all(2),
      child: Container(
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: film.cover_url,
          imageErrorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return const Center(
              child: Text("imagem não encontrada"),
            );
          },
          fit: BoxFit.cover,
        ),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       fit: BoxFit.cover,
        //       image: NetworkImage(film.cover_url),
        //       onError: (erro, stackTrace) => {
        //             setState(() {
        //               print(erro);
        //             })
        //           }),
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _showFilm(widget._film);
  }
}
