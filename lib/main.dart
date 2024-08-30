import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Botão 1 pressionado!');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Botão 1"),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Botão 2 pressionado!');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Botão 2"),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Botão 3 pressionado!');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Botão 3"),
                      Icon(Icons.add)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
