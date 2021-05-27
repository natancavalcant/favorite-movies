import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/models/user.dart';
import 'package:flutter/material.dart';

class AppMenuWidget extends StatefulWidget {
  final User _user;

  AppMenuWidget(this._user);

  @override
  _AppMenuWidgetState createState() => _AppMenuWidgetState();
}

class _AppMenuWidgetState extends State<AppMenuWidget> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10),
          height: 140,
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
              controller:
                  TextEditingController(text: "${widget._user.username}"),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                ),
                fillColor: AppColors.grey,
                filled: true,
                labelText: "nome de usuário",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (text) {
                if (text.isNotEmpty) {}
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 30,
                  width: 307,
                  child: TextField(
                    onChanged: (value) {},
                    obscureText: !showPassword,
                    controller:
                        TextEditingController(text: "${widget._user.password}"),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 0.0),
                      ),
                      fillColor: AppColors.grey,
                      filled: true,
                      labelText: "senha",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 13,
                      width: 13,
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
              controller:
                  TextEditingController(text: "${widget._user.question}"),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                ),
                fillColor: AppColors.grey,
                filled: true,
                labelText: "pergunta de verificação",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Container(
            height: 30,
            width: 307,
            child: TextField(
              controller: TextEditingController(text: "${widget._user.answer}"),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                ),
                fillColor: AppColors.grey,
                filled: true,
                labelText: "resposta",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: Container(
              height: 46,
              width: 157,
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(18.71),
              ),
              child: GestureDetector(
                onTap: () {},
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
            child: Container(
              height: 46,
              width: 157,
              decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.circular(18.71),
              ),
              child: GestureDetector(
                onTap: () {},
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
      ],
    );
  }
}