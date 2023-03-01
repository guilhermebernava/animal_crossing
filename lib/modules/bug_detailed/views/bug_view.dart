import 'package:animal_crossing/commons/widgets/inputs/search_input.dart';
import 'package:flutter/material.dart';

class BugView extends StatelessWidget {
  const BugView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SearchInput(
            controller: TextEditingController(),
          ),
        ],
      ),
    );
  }
}
