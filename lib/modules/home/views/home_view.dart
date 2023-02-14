import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        "HOME",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
