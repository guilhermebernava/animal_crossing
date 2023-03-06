import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_detailed_body.dart';
import 'package:flutter/material.dart';

class BugDetailedView extends StatelessWidget {
  final Bug bug;

  const BugDetailedView({
    super.key,
    required this.bug,
  });

  static const route = "/bug_details";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BugDetailedBody(
        bug: bug,
        size: size,
      ),
    );
  }
}
