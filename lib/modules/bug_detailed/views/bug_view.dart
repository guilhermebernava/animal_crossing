import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets/inputs/search_input.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/use_cases/bug_use_case.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_view/bug_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BugView extends StatelessWidget {
  final IBugUseCase useCase;
  const BugView({
    super.key,
    required this.useCase,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BugBody(
        size: size,
        children: [
          TransparentAppBarWidget(
            onTap: () => Modular.to.navigate(AppRoutes.homeModule),
          ),
          SearchInput(
            controller: TextEditingController(),
          ),
        ],
      ),
    );
  }
}
