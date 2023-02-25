import 'package:flutter/material.dart';

class FishDetailedColumn extends StatelessWidget {
  final List<Widget> children;
  final Size size;

  const FishDetailedColumn({
    super.key,
    required this.children,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
