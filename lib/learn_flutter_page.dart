import 'package:flutter/material.dart';
import 'package:hello_world/correct_answer.dart';
//import 'package:hello_world/home_page.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Best Pokemon"),
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
          Expanded(child: Image.asset('images/haunter.png')),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
            thickness: 5,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.purple,
            child: const Text(
              "Haunter is the best Pokemon",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.purple : Colors.red, 
            ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const CorrectAnswer();
                  },
                ));
              },
              child: const Text("Press Button To Agree")),
          GestureDetector(
            onTap: (){
              debugPrint("This is the row");
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_activity_sharp,
                  color: Colors.lightGreen,
                ), 
              Text("New Icon")],
            ),
          ),
          Switch(
            value: isSwitch, onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            })
        ],
      ),
    );
  }
}
