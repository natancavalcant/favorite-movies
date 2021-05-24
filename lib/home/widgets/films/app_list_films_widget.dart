import 'package:favoritemovies/core/app_images.dart';
import 'package:flutter/material.dart';

class AppFilmsWidget extends StatefulWidget {
  @override
  _AppFilmsWidgetState createState() => _AppFilmsWidgetState();
}

class _AppFilmsWidgetState extends State<AppFilmsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216.78,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //padding: EdgeInsets.only(left: 2),
        itemCount: 10,
        itemBuilder: (context, i) {
          if (i >= 10) {}
          return Container(
            width: 144.52,
            height: 216.78,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.movieBanner),
              ),
            ),
          );
        },
      ),
    );
  }
}
