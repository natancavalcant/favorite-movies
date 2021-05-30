import 'package:favoritemovies/controllers/films_controller.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:favoritemovies/search/widgets/app_result_search_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';

import 'package:flutter/material.dart';

class AppSearchFilms extends StatefulWidget {
  //final AppResultSearchWidget _appResultSearchWidget;
  final String _search;
  AppSearchFilms(this._search);
  @override
  _AppSearchFilmsState createState() => _AppSearchFilmsState();
}

class _AppSearchFilmsState extends State<AppSearchFilms> {
  late List<Films> _films;
  _getfilms() async {
    _films = await FilmsController().getMoviesByName(widget._search);
    return _films;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarInformationWidget(context),
      body: FutureBuilder(
        future: _getfilms(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AppResultSearchWidget(widget._search, _films);
          }
          if (snapshot.hasError) {
            return Center(
              child: Container(
                  padding: EdgeInsets.only(top: 40),
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
}
