import 'package:favoritemovies/menu/widgets/app_menu_widget.dart';
import 'package:favoritemovies/models/user.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';
import 'package:flutter/material.dart';

class AppMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarInformationWidget(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    AppMenuWidget(
                      User.getUser(),
                    ),
                  ],
                ),
              ),
            ),
            AppAuthorBarWidget(),
          ],
        ),
      ),
    );
  }
}
