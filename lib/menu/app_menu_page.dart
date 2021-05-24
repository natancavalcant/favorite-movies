import 'package:favoritemovies/menu/widgets/app_menu_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';
import 'package:flutter/material.dart';

class AppMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarInformationWidget(context),
      body: AppMenuWidget(
        {
          'username': 'admin',
          'password': '123456789',
          'question': "whats your surname",
          'answer': 'silva',
        },
      ),
    );
  }
}
