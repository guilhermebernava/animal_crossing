import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:flutter/material.dart';

class BugDetailedView extends StatelessWidget {
  final Bug bug;

  const BugDetailedView({
    super.key,
    required this.bug,
  });

  static const route = "/bug-detailed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 25,
          ),
          TransparentAppBarWidget(),
        ],
      ),
    );
  }
}
