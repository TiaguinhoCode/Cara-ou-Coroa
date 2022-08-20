import 'package:flutter/material.dart';
import 'package:cara_coroa/CaraOuCoroa.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CaraOuCoroa()));
            },
            child: Image.asset("images/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
