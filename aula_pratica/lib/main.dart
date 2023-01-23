import 'package:flutter/material.dart';
import 'tools/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  bool visible = true;

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
            children: const [
               Text('Flutter: Primeiros Passos'),
            ],
          ),
        ),
        body: AnimatedOpacity(
          opacity: widget.visible ? 1 : 0,
          duration: const  Duration(milliseconds: 1000),
          child: ListView(
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              widget.visible = !widget.visible;
            });

          },
        ),
      ),
    );
  }
}
