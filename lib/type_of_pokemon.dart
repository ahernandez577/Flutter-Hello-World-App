import 'package:flutter/material.dart';

class TypeOfPokemon extends StatefulWidget {
  const TypeOfPokemon({super.key});

  @override
  State<TypeOfPokemon> createState() => _TypeOfPokemonState();
}

class _TypeOfPokemonState extends State<TypeOfPokemon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Type of Pokemon"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(50.0),
            padding: const EdgeInsets.all(50.0),
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text(
              "The ghost type is the best!",
              textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
            ),
          )
          )
        ]
      )
    );
  }
}