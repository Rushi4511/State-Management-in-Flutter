import "package:flutter/material.dart";

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Player Name: ",
        ),
        Text(
          "Player Role: ",
        ),
        Text(
          "Player Team: ",
        ),
        Text(
          "Player Team: ",
        ),
      ],
    );
  }
}
