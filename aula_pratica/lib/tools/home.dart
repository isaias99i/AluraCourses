import 'package:flutter/material.dart';

class PrimeirosPassos extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final double largura;

  const PrimeirosPassos(
      {Key? key,
      required this.cor1,
      required this.cor2,
      required this.cor3,
      required this.largura})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: cor1,
              ),
              height: largura,
              width: largura,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: cor2,
              ),
              height: largura,
              width: largura,
              child: const Icon(Icons.person_add_disabled_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: cor3,
              ),
              height: largura,
              width: largura,
            ),
          )
        ],
      ),
    );
  }
}
