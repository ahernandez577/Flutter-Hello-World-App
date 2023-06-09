import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:hello_world/add_pokemon.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Add Pokemon'),
    ),
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: <Widget>[
        TextField(
          controller: controllerName,
          decoration: decoration('Pokemon Name'),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          child: const Text('Create'),
          onPressed: () {
            final user = User(
              name: controllerName.text,
            );

            createUser(user);

            Navigator.pop(context);
          },
        )
      ],
    )
  );
  }
}

InputDecoration decoration(String label) => InputDecoration(
  labelText: label,
  border: const OutlineInputBorder(),
);

Future createUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('pokemon').doc();
  user.id = docUser.id;

  final json = user.toJson();
  await docUser.set(json);
}

class User {
  String id;
  final String name;

  User({
    this.id = '',
    required this.name,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}