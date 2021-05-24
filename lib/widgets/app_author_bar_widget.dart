import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:flutter/material.dart';

class AppAuthorBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23),
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 83,
        decoration: BoxDecoration(color: AppColors.red),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This product uses the TMDb API but is not endorsed or certified by TMDb.',
              style: AppTextFonts.heading_4,
            ),
            Text(
              'By Patrick and Natan, 2021.',
              style: AppTextFonts.heading_5,
            )
          ],
        ),
      ),
    );
  }
}
