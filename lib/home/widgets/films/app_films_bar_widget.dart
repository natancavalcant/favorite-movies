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
  List<String> _categories = [
    "Em alta",
    "Ação",
    "aventura",
    "Animação",
    "Terror"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppSearchFilmsBarWidget(),
        AppCategoriesFilmsWidget(_categories),
        AppAuthorBarWidget()
      ],
    );
  }
}

/* Padding(
          padding: const EdgeInsets.only(left: 4, top: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 4, right: 4, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${_categories[1]}",
                      style: AppTextFonts.heading_2,
                    ),
                    Text(
                      "ver mais",
                      style: AppTextFonts.buttonTextFont,
                    )
                  ],
                ),
              ),
              AppFilmsWidget(),
            ],
          ),
        )*/
