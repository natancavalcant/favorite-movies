import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:favoritemovies/search/widgets/app_show_film_widget.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';

class AppResultSearchWidget extends StatefulWidget {
  final String search;
  final List<Films> _films;
  AppResultSearchWidget(this.search, this._films);

  @override
  _AppResultSearchWidgetState createState() => _AppResultSearchWidgetState();
}

class _AppResultSearchWidgetState extends State<AppResultSearchWidget> {
  @override
  Widget build(BuildContext context) {
    _filmList(index) {
      return Container(
        padding: EdgeInsets.all(2),
        child: AppShowFilmWidget(widget._films[index]),
      );
    }

    _listBuilder() {
      // ignore: unnecessary_null_comparison
      if (widget._films.isEmpty) {
        return Expanded(
          child: Center(
            child: Text(
              "Nenhum resultado",
              style: AppTextFonts.heading_6,
            ),
          ),
        );
      }
      return Expanded(
        child: GridView.count(
          physics: ScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: (174 / 273),
          padding: EdgeInsets.all(2),
          children: List.generate(
            widget._films.length,
            (index) {
              return _filmList(index);
            },
          ),
        ),
      );
    }

    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            "\"${widget.search}\"",
            style: AppTextFonts.textD,
          ),
        ),
        Container(
          color: AppColors.grey,
          height: 1,
        ),
        _listBuilder(),
        AppAuthorBarWidget(),
      ],
    );
  }
}
