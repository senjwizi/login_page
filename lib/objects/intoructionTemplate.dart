import 'package:flutter/material.dart';

import '../themes.dart';

class Introduciton extends StatelessWidget {
  const Introduciton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],);
  }
}