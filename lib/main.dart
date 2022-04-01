import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),

  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Não deveríamos temer a morte, mais sim a vida.",
    "O aleatório não existe, nosso cérebro sempre toma decisões mesmo que ocultas.",
    "O amor não se vê com os olhos, mas com o coração.",
    "Eu não procuro saber as respostas, procuro compreender as perguntas.",
    "O ignorante afirma, o sábio duvida, o sensato reflete.",
    "O dinheiro faz homens ricos, o conhecimento faz homens sábios e a humildade faz grandes homens.",
    "Bons amigos são como estrelas: nem sempre podemos ver, mas temos certeza que estão sempre lá.",
    "Se for pra desistir, desista de ser fraco.",
    "Viva simples, sonhe grande, seja grato, dê amor, ria muito!",
    "As noites mais escuras produzem as estrelas mais brilhantes.",
    "Tire o dia para sorrir."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSortear = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSortear];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/logo.png"),
            Text(_fraseGerada,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                  "Gerar Frase",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
