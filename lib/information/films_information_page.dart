import 'package:favoritemovies/home/widgets/films/app_search_films_bar_widget.dart';
import 'package:favoritemovies/information/widgets/Films_information_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:favoritemovies/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class FilmsInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarInformationWidget(context),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppSearchFilmsBarWidget(),
              FilmsInformationWidget(
                {
                  "nome": "Liga Da Justiça",
                  "detalhes":
                      "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima.",
                  "favorite": "true",
                  "banner": "assets/images/ligadajustica.png",
                },
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: AppAuthorBarWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}
