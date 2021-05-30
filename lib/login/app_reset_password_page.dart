import 'package:favoritemovies/controllers/recovery_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/login/app_login_page.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppResetPasswordPage extends StatefulWidget {
  final String _email;
  final String _question;
  AppResetPasswordPage(this._email, this._question);
  @override
  _AppResetPasswordPageState createState() => _AppResetPasswordPageState();
}

class _AppResetPasswordPageState extends State<AppResetPasswordPage> {
  String _answer = '';
  String _newPassword = '';
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
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text("${widget._email},",
                            style: AppTextFonts.heading_5),
                        Text(
                          "${widget._question}",
                          style: AppTextFonts.heading_5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      height: 30,
                      width: 307,
                      child: TextField(
                        onChanged: (value) => _answer = value.trim(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "reposta",

                          //icon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 27),
                    child: Container(
                      height: 30,
                      width: 307,
                      child: TextField(
                        onChanged: (value) => _newPassword = value.trim(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "nova senha",

                          //icon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 67),
                    child: Container(
                      height: 46,
                      width: 157,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(18.71),
                      ),
                      child: GestureDetector(
                        onTap: () async {
                          if (_answer == "" || _newPassword == "") {
                            _alert(context, "Campos inválidos",
                                "Preencha todos os campos", true);
                          }
                          var response = await RecoveryController()
                              .recovery(widget._email, _answer, _newPassword);
                          if (response.containsKey('password_changed')) {
                            print(response);
                            _alert(context, "Senha Alterada",
                                "Por favor, efetue o login", false);
                          } else {
                            _alert(context, "Algo deu errado",
                                "${response['err']}", true);
                          }
                        },
                        child: Center(
                          child: Text(
                            'Enviar',
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
                                builder: (context) => AppLoginPage()));
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
                height: 20,
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

  _alert(BuildContext context, String title, String body, bool err) {
    Widget button = TextButton(
      onPressed: () {
        if (err == false) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AppLoginPage()));
        } else {
          print(err);
          Navigator.pop(context);
        }
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
