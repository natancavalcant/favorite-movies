import 'package:favoritemovies/search/widgets/app_result_search_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';

import 'package:flutter/material.dart';

class AppSearchFilms extends StatefulWidget {
  final AppResultSearchWidget _appResultSearchWidget;
  AppSearchFilms(this._appResultSearchWidget);
  @override
  _AppSearchFilmsState createState() => _AppSearchFilmsState();
}

class _AppSearchFilmsState extends State<AppSearchFilms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarInformationWidget(context),
        body: widget._appResultSearchWidget);
  }
}
