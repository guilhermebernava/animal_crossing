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
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Stack(
          alignment: const Alignment(0, -1.05),
          children: children,
        ),
      ),
    );
  }
}
