import 'package:favoritemovies/filter/widgets/app_filter_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';
import 'package:flutter/material.dart';

class AppFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarInformationWidget(context),
      body: AppFilterWidget(),
    );
  }
}
