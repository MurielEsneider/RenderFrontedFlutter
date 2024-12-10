import 'package:flutter/material.dart';
import 'package:flutter_application_02/screen/login.dart';
import 'package:flutter_application_02/screen/register.dart';

class menuOption extends StatefulWidget {
  const menuOption({super.key});

  @override
  State<menuOption> createState() => _menuOptionState();
}

class _menuOptionState extends State<menuOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 39, 33),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 1, 85, 67),
          foregroundColor: Colors.white,
          title: const Text("Menu Opcion"),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 16),
            Image.network(
              "",
              height: 280,
              width: 280,
            ),
            const SizedBox(height: 10),
            Card(
                child: ListTile(
              title: const Text("Registro"),
              leading: const Icon(Icons.account_circle_sharp),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const registerUser()));
              },
            )),
            Card(
                child: ListTile(
              title: const Text("Login"),
              leading: const Icon(Icons.add_card_outlined),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
            ))
          ],
        ));
  }
}
