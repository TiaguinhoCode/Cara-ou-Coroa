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
  void _escolha() {
    var opcoes = ["cara", "coroa"];
    var numero = Random().nextInt(2);
    var escolhaApp = opcoes[numero];

    switch (escolhaApp) {
      case "cara":
        setState(() {
          this.imagemApp = AssetImage("images/moeda_cara.png");
        });
        break;
      case "coroa":
        setState(() {
          this.imagemApp = AssetImage("images/moeda_coroa.png");
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 68, 196, 134),
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
