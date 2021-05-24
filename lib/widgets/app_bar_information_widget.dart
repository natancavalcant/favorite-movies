import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:flutter/material.dart';

class AppBarInformationWidget extends PreferredSize {
  AppBarInformationWidget(context)
      : super(
          preferredSize: Size.fromHeight(130),
          child: Container(
            height: 130,
            decoration: BoxDecoration(color: AppColors.red),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.voltar),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Favorite Movies',
                        style: AppTextFonts.heading_1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 22.94,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.barHeart),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
}
