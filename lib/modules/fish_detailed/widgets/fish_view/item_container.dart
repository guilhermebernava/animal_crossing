import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/item_container_text.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: size.height * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blue,
          border: Border.all(
            color: AppColors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Container(
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      fish.iconUrl,
                      scale: 0.2,
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
                  ItemContainerText(text: fish.name, title: "Name:"),
                  ItemContainerText(
                    title: "Price:",
                    text: fish.price.toString(),
                  ),
                  ItemContainerText(title: "Rarity:", text: fish.rarity),
                  ItemContainerText(title: "Location:", text: fish.location),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
