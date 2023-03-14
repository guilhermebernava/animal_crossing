import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/use_cases/i_fossil_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FossilView extends StatelessWidget {
  final IFossilUseCase fossilUseCase;

  const FossilView({
    super.key,
    required this.fossilUseCase,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.backgroundSeaMonster,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TransparentAppBarWidget(
                onTap: () => Modular.to.navigate(
                  AppRoutes.homeModule,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
