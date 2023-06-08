import 'package:flutter/material.dart';
import 'package:login_page/objects/customButton.dart';
import 'package:login_page/objects/intoructionTemplate.dart';
import 'package:login_page/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController? pageController = PageController();

    final pagesText = ["Изучайте любой язык в свободное время c помощью нашего приложения!",
    "Еще какой-то текст!",
    "И еще какой-то текст!"
    ];

    int currentPage = 0;
    
    return Scaffold(
      backgroundColor: colorWhite, //0xFFe5e2ddx
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: 
              Image.asset("images/welcoming_page_1.png"),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: 
              SizedBox(
                width: 300,
                child: Text(
                  "One click away from splitting bill", //Learn Any Language
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
              )
          ),
          Container(
            width: size.width,
            height: size.height * 0.35,
            decoration: const BoxDecoration(
              color: Color(0xFF1e1d2d),
              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(35, 20), topRight: Radius.elliptical(35, 20))
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //width: 85,
                    //height: 7,
                    //decoration: BoxDecoration(
                    //  color: colorDirtBlue,
                    //  borderRadius: BorderRadius.circular(5)
                    //),
                    child:
                      SmoothPageIndicator(controller: pageController, count: 3),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      pagesText[currentPage],
                      style: subTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        lable: "Пропустить", 
                        buttonColor: colorDirtBlue, 
                        textColor: colorWhite, 
                        width: 150, 
                        height: 50, 
                        cornersRadius: 15, 
                        onTap: () {}
                      ),
                      const SizedBox(width: 15,),
                      CustomButton(
                        lable: "Дальше", 
                        buttonColor: colorWhite, 
                        textColor: colorBlack, 
                        width: 150, 
                        height: 50, 
                        cornersRadius: 15, 
                        onTap: () {
                          pageController.nextPage(duration: const Duration(microseconds: 500), curve: Curves.easeIn);
                          print("next");
                        }
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}