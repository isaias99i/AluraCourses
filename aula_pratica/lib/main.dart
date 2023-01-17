import 'package:flutter/material.dart';

import 'tools/home.dart';
import 'tools/iconVisibility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  final bool visible = true;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Flutter: Primeiros Passos'),
              HideInfos(visible: widget.visible),
            ],
          ),
        ),
        body: ListView(
          children: const [
            PrimeirosPassos(
                cor1: Colors.black,
                cor2: Colors.red,
                cor3: Colors.yellow,
                largura: 100),
            PrimeirosPassos(
                cor1: Colors.black,
                cor2: Colors.red,
                cor3: Colors.lightBlueAccent,
                largura: 100),
            PrimeirosPassos(
                cor1: Colors.red,
                cor2: Colors.purple,
                cor3: Colors.pinkAccent,
                largura: 100),
            PrimeirosPassos(
                cor1: Colors.black,
                cor2: Colors.red,
                cor3: Colors.yellow,
                largura: 100),
            PrimeirosPassos(
                cor1: Colors.black,
                cor2: Colors.red,
                cor3: Colors.lightBlueAccent,
                largura: 100),
            PrimeirosPassos(
                cor1: Colors.red,
                cor2: Colors.purple,
                cor3: Colors.pinkAccent,
                largura: 100),
          ],
        ),
      ),
    );
  }
}
