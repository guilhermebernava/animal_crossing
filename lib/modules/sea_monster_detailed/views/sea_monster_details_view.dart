import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_detailed_body.dart';
import 'package:flutter/material.dart';

class SeaMonsterDetailsView extends StatelessWidget {
  final SeaMonster seaMonster;

  const SeaMonsterDetailsView({
    super.key,
    required this.seaMonster,
  });

  static const route = "/seaMonster-details";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SeaMonsterDetailedBody(
          seaMonster: seaMonster,
          size: size,
        ),
      ),
    );
  }
}
