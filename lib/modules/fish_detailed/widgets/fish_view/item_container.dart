import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/views/fish_detailed.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/item_container_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ItemContainer extends StatelessWidget {
  final Size size;
  final Fish fish;

  const ItemContainer({
    super.key,
    required this.fish,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed(
        ".${FishDetailed.route}",
        arguments: fish,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          height: size.height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.3),
                blurRadius: 8,
                spreadRadius: 2,
                offset: const Offset(1, 2),
              )
            ],
            gradient: const LinearGradient(
              colors: [AppColors.darkBlue, AppColors.blue],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            border: Border.all(
              color: AppColors.white,
              width: 3.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Container(
                  width: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        fish.iconUrl,
                        scale: 0.4,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 10),
                  child: Container(
                    height: size.height * 0.16,
                    width: 2,
                    color: AppColors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemContainerText(
                      text: fish.name,
                      title: "Name:",
                      size: size,
                    ),
                    ItemContainerText(
                      title: "Price:",
                      text: fish.price.toString(),
                      size: size,
                    ),
                    ItemContainerText(
                      title: "Rarity:",
                      text: fish.rarity,
                      size: size,
                    ),
                    ItemContainerText(
                      title: "Location:",
                      text: fish.location,
                      size: size,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
