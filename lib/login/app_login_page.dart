import 'package:favoritemovies/controllers/auth_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/home/app_home_page.dart';
import 'package:favoritemovies/login/app_search_email_page.dart';
import 'package:favoritemovies/signup/app_signup_page.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppLoginPage extends StatefulWidget {
  @override
  _AppLoginPageState createState() => _AppLoginPageState();
}

class _AppLoginPageState extends State<AppLoginPage> {
  String _email = '';
  String _password = '';
  _auth() async {
    return await AuthController().getToken();
  }

  @override
  Widget build(BuildContext context) {
    _auth();
    return FutureBuilder(
        future: _auth(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AppHomePage();
          } else if (snapshot.data == null) {
            return _renderLogin();
          } else {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: AppColors.red,
              child: Center(
                child: Image.asset(AppImages.logo),
              ),
            );
          }
        });
  }

  _renderLogin() {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                      child: Container(
                        height: 30,
                        width: 307,
                        child: TextField(
                          onChanged: (value) {
                            _email = value.trim();
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                            ),
                            fillColor: AppColors.white,
                            filled: true,
                            labelText: "Email",

                            //icon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Container(
                        height: 30,
                        width: 307,
                        child: TextField(
                          onChanged: (value) {
                            _password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                            ),
                            fillColor: AppColors.white,
                            filled: true,
                            labelText: "Senha",

                            //icon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: GestureDetector(
                        onTap: () async {
                          if (_email == '' || _password == '') {
                            _alert(context, "Campos inválidos",
                                "Preencha todos os campos!", true);
                          } else {
                            print("$_email" + "\n" + "$_password");
                            var response = await AuthController()
                                .auth(email: _email, password: _password);
                            print(response);
                            if (response.containsKey('token')) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AppHomePage(),
                                ),
                              );
                            } else {
                              _alert(context, "Falha ao efetuar login",
                                  "Verifique seus dados!", true);
                            }
                          }
                        },
                        child: Container(
                          height: 46,
                          width: 157,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(18.71),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                'Entrar',
                                style: AppTextFonts.entrarButton,
                              ),
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
                              builder: (context) => AppSignupPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Criar conta',
                          style: AppTextFonts.whiteTextButton,
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
                              builder: (context) => AppSearchEmailPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Recuperar senha',
                          style: AppTextFonts.whiteTextButton,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 91,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: AppAuthorBarWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  _alert(BuildContext context, String title, String body, bool err) {
    Widget button = TextButton(
      onPressed: () {
        if (err == false) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AppHomePage()));
        } else {
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
