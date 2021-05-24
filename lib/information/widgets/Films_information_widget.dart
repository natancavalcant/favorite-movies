import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/home/widgets/films/app_search_films_bar_widget.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:favoritemovies/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class FilmsInformationWidget extends StatefulWidget {
  var _film;
  FilmsInformationWidget(this._film);
  @override
  _FilmsInformationState createState() => _FilmsInformationState();
}

class _FilmsInformationState extends State<FilmsInformationWidget> {
  bool _favorite = false;
  String _favoriteImage = AppImages.naoFavorito;
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
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 4, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "${widget._film["nome"]}",
              style: AppTextFonts.heading_2,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(),
                height: 412,
                width: 265,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${widget._film["banner"]}"),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: 80,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
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
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Descrição: ",
                  style: AppTextFonts.heading_6,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 2),
                  child: Text(
                    "${widget._film["detalhes"]}",
                    style: AppTextFonts.text_2,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
