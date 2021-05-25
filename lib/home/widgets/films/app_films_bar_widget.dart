import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:favoritemovies/home/widgets/films/app_categories_films_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app_list_films_widget.dart';
import 'app_search_films_bar_widget.dart';

class AppFilmsBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppSearchFilmsBarWidget(),
        AppCategoriesFilmsWidget(),
        AppAuthorBarWidget()
      ],
    );
  }
}
