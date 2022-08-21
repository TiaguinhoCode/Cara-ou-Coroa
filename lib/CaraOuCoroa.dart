import 'package:flutter/material.dart';
import 'package:cara_coroa/home.dart';

class CaraOuCoroa extends StatefulWidget {
  const CaraOuCoroa({Key? key, this.imagem}) : super(key: key);

  final imagem;
  @override
  State<CaraOuCoroa> createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 68, 196, 134),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: this.widget.imagem),
          Padding(padding: EdgeInsets.only(top: 80)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Image.asset("images/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
