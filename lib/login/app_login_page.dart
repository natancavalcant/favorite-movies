import 'package:favoritemovies/core/app_colors.dart';
import 'package:favoritemovies/core/app_images.dart';
import 'package:favoritemovies/core/app_text_fonts.dart';
import 'package:favoritemovies/widgets/app_author_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.red),
        child: ListView(
          children: [
            Expanded(
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
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "nome de usuário",

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
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          labelText: "senha",

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
                      height: 46,
                      width: 157,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(18.71),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Entrar',
                            style: AppTextFonts.entrarButton,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Criar conta',
                        style: AppTextFonts.whiteTextButton,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Recuperar senha',
                        style: AppTextFonts.whiteTextButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
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
    );
  }
}
