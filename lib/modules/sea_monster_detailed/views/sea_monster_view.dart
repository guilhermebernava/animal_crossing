import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/use_cases/i_sea_monster_use_case.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_view/body_builder.dart';
import 'package:flutter/material.dart';

class SeaMonsterView extends StatelessWidget {
  final ISeaMonsterUseCase useCase;

  const SeaMonsterView({
    super.key,
    required this.useCase,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BodyBuilder(
        useCase: useCase,
        size: size,
      ),
    );
  }
}
