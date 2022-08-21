import 'package:flutter/material.dart';
import 'package:cara_coroa/CaraOuCoroa.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var imagemApp = AssetImage("images/moeda_cara.png");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          Padding(padding: EdgeInsets.only(top: 40)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CaraOuCoroa(imagem: this.imagemApp)));
            },
            child: Image.asset("images/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
