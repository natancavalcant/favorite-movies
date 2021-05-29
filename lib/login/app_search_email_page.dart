import 'package:favoritemovies/controllers/recovery_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/login/app_reset_password_page.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app_login_page.dart';

class AppSearchEmailPage extends StatefulWidget {
  @override
  _AppSearchEmailPageState createState() => _AppSearchEmailPageState();
}

class _AppSearchEmailPageState extends State<AppSearchEmailPage> {
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.red),
        child: ListView(
          children: [
            Container(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.122,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 165,
                    width: 156,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.logo),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Container(
                      height: 30,
                      width: 307,
                      child: TextField(
                        onChanged: (value) {
                          _email = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: 'Email',

                          //icon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 64),
                    child: Container(
                      height: 46,
                      width: 157,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(18.71),
                      ),
                      child: GestureDetector(
                        onTap: () async {
                          if (_email == '') {
                            _alert(context, "Campos inválidos",
                                "Preencha todos os campos");
                          } else {
                            print("$_email");
                            var response =
                                await RecoveryController().search(_email);
                            if (response.containsKey("recovery_question")) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AppResetPasswordPage(
                                    response['recovery_question'],
                                  ),
                                ),
                              );
                            } else {
                              _alert(
                                  context, 'Error', '${response['message']}');
                            }
                          }
                        },
                        child: Center(
                          child: Text(
                            'Próximo',
                            style: AppTextFonts.entrarButton,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppLoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Entrar',
                        style: AppTextFonts.whiteTextButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Container(
                height: 99,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: AppAuthorBarWidget(),
            )
          ],
        ),
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
