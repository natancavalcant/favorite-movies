import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/home/widgets/films/app_list_films_widget.dart';
import 'package:flutter/material.dart';

class AppCategoriesFilmsWidget extends StatelessWidget {
  List<String> _categories = [];
  AppCategoriesFilmsWidget(this._categories);
  Widget _buildCategoryItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 4, right: 4, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${_categories[index]}",
                  style: AppTextFonts.heading_2,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "ver mais",
                    style: AppTextFonts.buttonTextFont,
                  ),
                )
              ],
            ),
          ),
          AppFilmsWidget(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(this._categories.length,
          (index) => _buildCategoryItem(context, index)),
    );
    /*ListView.builder(
      itemBuilder: _buildCategoryItem,
      itemCount: _categories.length,
    );*/
  }
}
