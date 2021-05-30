import 'package:favoritemovies/controllers/auth_controller.dart';
import 'package:favoritemovies/controllers/user_controller.dart';
import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/login/app_login_page.dart';
import 'package:flutter/material.dart';

class AppMenuWidget extends StatefulWidget {
  final _user;
  AppMenuWidget(this._user);

  @override
  _AppMenuWidgetState createState() => _AppMenuWidgetState();
}

class _AppMenuWidgetState extends State<AppMenuWidget> {
  bool showPassword = false;
  String _name = '';
  String _password = '';
  String _question = '';
  String _answer = '';
  @override
  void initState() {
    super.initState();
    _name = widget._user['name'];
    _question = widget._user['recovery_question'];
  }

  @override
  Widget build(BuildContext context) {
    return _renderMenu();
  }

  _renderMenu() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            height: 130,
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomLeft,
              height: 30,
              width: 320,
              child: Text(
                "Alterar Informações.",
                style: AppTextFonts.alter,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 2,
            ),
            height: 1,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              height: 30,
              width: 307,
              child: TextField(
                //enabled: false,
                controller: TextEditingController(text: "$_name"),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  fillColor: AppColors.grey,
                  filled: true,
                  labelText: "Nome de usuário(opcional)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (text) {
                  _name = text.trim();
                },
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    height: 30,
                    width: 277,
                    child: TextField(
                      obscureText: !showPassword,
                      //controller: TextEditingController(text: "$_password"),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 0.0),
                        ),
                        fillColor: AppColors.grey,
                        filled: true,
                        labelText: "Nova senha(obrigatório alterar senha.)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onChanged: (text) {
                        _password = text.trim();
                      },
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(right: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        padding: EdgeInsets.only(top: 4),
                        child: Checkbox(
                          value: showPassword,
                          onChanged: (value) {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "mostrar",
                          style: AppTextFonts.text_3,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 30,
              width: 307,
              child: TextField(
                controller: TextEditingController(text: "$_question"),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  fillColor: AppColors.grey,
                  filled: true,
                  labelText: "Pergunta de verificação(opcional)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (text) {
                  _question = text.trim();
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 30,
              width: 307,
              child: TextField(
                controller: TextEditingController(text: "$_answer"),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  fillColor: AppColors.grey,
                  filled: true,
                  labelText: "Nova resposta(opcional)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (text) {
                  _answer = text.trim();
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  if (_password == '') {
                    return _alert(context, "Campo Inválido",
                        "Preencha o campo de senha!");
                  }
                  _alertAlter(context, "Alterar informações?",
                      "Não há como voltar atrás.");
                },
                child: Container(
                  height: 46,
                  width: 157,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(18.71),
                  ),
                  child: Center(
                    child: Text(
                      'Salvar',
                      style: AppTextFonts.heading_1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  AuthController().cleanCache();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppLoginPage(),
                    ),
                  );
                },
                child: Container(
                  height: 46,
                  width: 157,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(18.71),
                  ),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Sair',
                        style: AppTextFonts.heading_1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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

  _alertAlter(BuildContext context, String title, String body) {
    Widget recuseButton = TextButton(
      onPressed: () {
        setState(() {
          _name = widget._user['name'];
          _password = '';
          _answer = widget._user['recovery_question'];
          _question = '';
          Navigator.pop(context);
        });
      },
      child: Text("Não"),
    );
    Widget confirmButton = TextButton(
      onPressed: () async {
        var response = await UserController()
            .alterUserInformation(_name, _password, _question, _answer);
        Navigator.pop(context);
        if (response) {
          _alert(context, "Suas informações foram alteradas!",
              "Informações alteradas com sucesso.");
        } else {
          _alert(context, "Algo deu errado",
              "Houve algum erro ao tentar alterar os dados");
        }
      },
      child: Text("Sim"),
    );
    var alertBox = AlertDialog(
      title: Text("$title"),
      content: Text("$body"),
      actions: [recuseButton, confirmButton],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertBox;
        });
  }
}
