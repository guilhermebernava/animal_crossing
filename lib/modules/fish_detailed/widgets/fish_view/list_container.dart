import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/item_container.dart';
import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  final Size size;
  final List<Fish> fishes;

  const ListContainer({
    super.key,
    required this.size,
    required this.fishes,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fishes.length,
      shrinkWrap: true,
      itemBuilder: (_, index) => ItemContainer(
        fish: fishes[index],
        size: size,
      ),
    );
  }
}