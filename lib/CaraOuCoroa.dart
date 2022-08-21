import 'package:flutter/material.dart';

class CaraOuCoroa extends StatefulWidget {
  const CaraOuCoroa({Key? key, this.valor = ""}) : super(key: key);

  final String valor;

  @override
  State<CaraOuCoroa> createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/moeda_cara.png"),
          Padding(padding: EdgeInsets.only(top: 80)),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("images/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
