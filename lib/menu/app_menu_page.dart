import 'package:favoritemovies/controllers/user_controller.dart';
import 'package:favoritemovies/menu/widgets/app_menu_widget.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:favoritemovies/widgets/app_bar_information_widget.dart';
import 'package:flutter/material.dart';

class AppMenuPage extends StatefulWidget {
  @override
  _AppMenuPageState createState() => _AppMenuPageState();
}

class _AppMenuPageState extends State<AppMenuPage> {
  var user;

  _getUser() async {
    user = await UserController().getUserInformation();
    return user;
  }

  @override
  Widget build(BuildContext context) {
    _getUser();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarInformationWidget(context),
      body: FutureBuilder(
          future: _getUser(),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              //print(user);
              return _renderMenu(context);
            } else if (snapShot.hasError ||
                snapShot.data.toString().contains("err")) {
              return Center(
                child: Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Text("Erro ao carregar informações")),
              );
            } else {
              return Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: SizedBox(
                  child: CircularProgressIndicator(),
                  width: 60,
                  height: 60,
                ),
              );
            }
          }),
    );
  }

  _renderMenu(context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  AppMenuWidget(
                    user,
                  ),
                ],
              ),
            ),
          ),
          AppAuthorBarWidget(),
        ],
      ),
    );
  }
}
