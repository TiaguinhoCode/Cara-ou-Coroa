import 'package:flutter/material.dart';
import 'package:cara_coroa/CaraOuCoroa.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    var opcoes = ["cara", "coroa"];
    var numero = Random().nextInt(opcoes.length);
    var resultado = opcoes[numero];

    /*if ((resultado == "cara")) {
      setState(() {
        this._imageApp = AssetImage("images/moeda_cara.png");
      });
    } else {
      setState(() {
        this._imageApp = AssetImage("images/moeda_coroa.png");
      });
    }*/
    /*switch (escolhaApp) {
      case "cara":
        setState(() {
          this._imageApp = AssetImage("images/moeda_cara.png");
        });
        break;
      case "coroa":
        setState(() {
          this._imageApp = AssetImage("images/moeda_coroa.png");
        });
    }*/

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CaraOuCoroa(
                  valor: resultado,
                )));
  }

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
            onTap: _exibirResultado,
            child: Image.asset("images/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
