import 'package:favoritemovies/controllers/signup_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/login/app_login_page.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppSignupPage extends StatefulWidget {
  //UserProvider userProvider = UserProvider().instance;
  @override
  _AppSignupPageState createState() => _AppSignupPageState();
}

class _AppSignupPageState extends State<AppSignupPage> {
  String _username = "";
  String _email = "";
  String _password = "";
  String _question = "";
  String _answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.red),
        child: ListView(
          children: [
            Container(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: EdgeInsets.only(top: 27),
                    child: Container(
                      height: 30,
                      width: 307,
                      child: TextField(
                        onChanged: (value) {
                          _username = value.trim();
                        },
                        maxLength: 100,
                        decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "Nome de usuário",

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
                        onChanged: (value) {
                          _email = value.trim();
                        },
                        maxLength: 100,
                        decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "E-mail",

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
                        obscureText: true,
                        onChanged: (value) {
                          _password = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "Senha",
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
                        onChanged: (value) {
                          _question = value.trim();
                        },
                        maxLength: 100,
                        decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "Pergunta de recuperação",

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
                        onChanged: (value) {
                          _answer = value.trim();
                        },
                        maxLength: 100,
                        decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "Resposta",

                          //icon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 47),
                    child: Container(
                      height: 46,
                      width: 157,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(18.71),
                      ),
                      child: GestureDetector(
                        onTap: () async {
                          if (_username == '' ||
                              _email == '' ||
                              _password == '' ||
                              _question == '' ||
                              _answer == '') {
                            return _alert(context, "Erro:",
                                "Preencha todos os campos.", true);
                          }
                          var response = await SignupController().signup(
                              _username, _email, _password, _question, _answer);

                          if (response == 200) {
                            _alert(context, "Cadastro realizado",
                                "Por favor, efetue o login", false);
                          } else {
                            if (response == 500) {
                              _alert(context, "Erro:", "Email já cadastrado!",
                                  true);
                            } else if (response == 422) {
                              _alert(
                                  context,
                                  "Erro:",
                                  "Sua senha deve ter no minimo 8 caracteres.",
                                  true);
                            }
                          }
                        },
                        child: Center(
                          child: Text(
                            'Criar conta',
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
              height: 5,
            )),
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
