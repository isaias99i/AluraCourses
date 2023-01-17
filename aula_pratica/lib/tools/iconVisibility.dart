import 'package:flutter/material.dart';

class HideInfos extends StatefulWidget {
  final bool visible;

  const HideInfos({Key? key, required this.visible}) : super(key: key);

  @override
  State<HideInfos> createState() => _HideInfosState();
}

class _HideInfosState extends State<HideInfos> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            widget.visible = !widget.visible;
          });
        },
        icon: widget.visible
            ? const Icon(Icons.visibility)
            : const Icon(Icons.visibility_off));
  }
}
