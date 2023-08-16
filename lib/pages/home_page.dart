import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Operador Ternário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: value ? Colors.blue : Colors.red,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    value = !value;
                    debugPrint(value.toString());
                  });
                },
                child: const Text('Me aperte!'))
          ],
        ),
      ),
    );
  }
}
