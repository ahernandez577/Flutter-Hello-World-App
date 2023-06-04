import 'package:flutter/material.dart';
import 'package:hello_world/type_of_pokemon.dart';

class CorrectAnswer extends StatefulWidget {
  const CorrectAnswer({super.key});

  @override
  State<CorrectAnswer> createState() => _CorrectAnswerState();
}

class _CorrectAnswerState extends State<CorrectAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Correct Answer"),
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
              "You have great taste in Pokemon!",
              textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
            ),
          )
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const TypeOfPokemon();
                  },
                ));
              },
              child: const Text("Which Pokemon Type is the best?")),
        ],
      ),
    );
  }
}