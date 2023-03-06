import 'package:flutter/material.dart';

class BugBody extends StatelessWidget {
  final Size size;
  final List<Widget> children;

  const BugBody({
    super.key,
    required this.children,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
