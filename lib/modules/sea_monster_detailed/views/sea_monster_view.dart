import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets/inputs/search_input.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_view/sea_monster_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SeaMonsterView extends StatelessWidget {
  const SeaMonsterView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      //TODO adicionar BlocBuilder
      body: SeaMonsterBackground(
        size: size,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TransparentAppBarWidget(
                onTap: () => Modular.to.navigate(
                  AppRoutes.homeModule,
                ),
              ),
              SearchInput(controller: TextEditingController()),
              const Text(
                "SEA MONSTERS",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
