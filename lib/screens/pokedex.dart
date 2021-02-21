import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home_page.dart';

class Pokedex extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2)).then(
        (value) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (e) => HomePage(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Sejam Bem Vindos!!!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Flutterando',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Desafios',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Image.asset('assets/gif/pi.gif')
      ],
    );
  }
}
