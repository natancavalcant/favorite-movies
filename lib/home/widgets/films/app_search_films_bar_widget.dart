import 'package:favoritemovies/controllers/films_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/models/films.dart';
import 'package:favoritemovies/search/app_search_films.dart';
import 'package:favoritemovies/search/widgets/app_result_search_widget.dart';
import 'package:flutter/material.dart';

class AppSearchFilmsBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 26,
            child: TextField(
              onSubmitted: (value) async {
                if (value != '') {
                  var _search = value.trim();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppSearchFilms(_search),
                    ),
                  );
                }
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                ),
                suffixIcon: Icon(Icons.search),
                fillColor: AppColors.grey,
                filled: true,
                labelText: "buscar",

                //icon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 25,
              height: 17,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.filter),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _alert(BuildContext context, String title, String body) {
    Widget button = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("ok"),
    );
    var alertBox = AlertDialog(
      title: Text("$title"),
      content: Text("$body"),
      actions: [button],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertBox;
        });
  }
}
