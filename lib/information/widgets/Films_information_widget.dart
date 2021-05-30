import 'package:favoritemovies/controllers/films_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/models/fullFilmInformation.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';

import 'package:flutter/material.dart';

class FilmsInformationWidget extends StatefulWidget {
  final String _id;
  FilmsInformationWidget(this._id);
  @override
  _FilmsInformationState createState() => _FilmsInformationState();
}

class _FilmsInformationState extends State<FilmsInformationWidget> {
  late FullFilmInformation _film;

  bool _favorite = false;
  String _favoriteImage = AppImages.naoFavorito;

  _getFilmInformation() async {
    _film = await FilmsController().getFilmInformation(widget._id);
    return _film;
  }

  @override
  Widget build(BuildContext context) {
    setState(
      () {
        if (_favorite == true) {
          _favoriteImage = AppImages.favorito;
        }
      },
    );
    return Container(
      child: FutureBuilder(
        future: _getFilmInformation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _filmsInformation();
          } else if (snapshot.hasError) {
            return Center(
              child: Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Text("Erro ao carregar informações")),
            );
          } else {
            return Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: SizedBox(
                child: CircularProgressIndicator(),
                width: 60,
                height: 60,
              ),
            );
          }
        },
      ),
    );
  }

  _filmsInformation() {
    _colorRating() {
      if (_film.rating > 7.5) {
        return AppColors.green;
      } else if (_film.rating <= 7.5 && _film.rating > 5) {
        return AppColors.yellow;
      } else {
        return AppColors.red;
      }
    }

    if (_film.title == '') {
      return Center(
        child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Text("Informações não encontradas")),
      );
    }

    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            color: AppColors.grey,
          ),
          Container(
            padding: EdgeInsets.only(left: 4, bottom: 8, top: 4, right: 4),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 350,
                  padding: EdgeInsets.only(left: 2, right: 4),
                  child: Text(
                    "${_film.title}",
                    style: AppTextFonts.textD,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(left: 4),
                height: 412,
                width: 265,
                child: _getImage(_film.cover_url),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: NetworkImage(_film.cover_url),
                //   ),
                // ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: _colorRating(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "${_film.rating}*",
                              style: AppTextFonts.heading_5,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Score",
                            style: AppTextFonts.heading_0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    alignment: Alignment.bottomCenter,
                    width: 80,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                _favorite = !_favorite;
                                _favoriteImage =
                                    _favoriteImage == AppImages.naoFavorito
                                        ? AppImages.favorito
                                        : AppImages.naoFavorito;
                              },
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.only(),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(_favoriteImage),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "favoritar",
                            style: AppTextFonts.heading_0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 8, left: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  color: AppColors.grey,
                ),
                Text(
                  "Sinopse: ",
                  style: AppTextFonts.heading_6,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 12),
                    child: Text(
                      "${_film.synopsis}\n",
                      style: AppTextFonts.text_2,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, left: 4, bottom: 0),
            child: RichText(
              text: TextSpan(
                  text: 'Directors: ',
                  style: AppTextFonts.textD,
                  children: [
                    TextSpan(
                        text:
                            " ${_film.directors.toString().replaceAll(RegExp(r'\[|\]'), '')}",
                        style: AppTextFonts.text_2)
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, left: 4, bottom: 10),
            child: RichText(
              text: TextSpan(
                  text: 'Genres: ',
                  style: AppTextFonts.textD,
                  children: [
                    TextSpan(
                        text:
                            " ${_film.genres.toString().replaceAll(RegExp(r'\[|\]'), '')}",
                        style: AppTextFonts.text_2)
                  ]),
            ),
          ),
          AppAuthorBarWidget(),
        ],
      ),
    );
  }

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
            child: Container(
              height: 412,
              width: 265,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: 200,
                  ),
                  CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                  Text(
                    "Carregando imagem...",
                    style: AppTextFonts.heading_0,
                  )
                ],
              ),
            ),
          );
        },
      );
    } catch (exp) {
      return Image.asset(AppImages.errorImage);
    }
  }
}
