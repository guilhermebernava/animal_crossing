import 'package:animal_crossing/commons/interfaces/i_core_grid_item.dart';

class SeaMonster implements ICoreGridItem {
  final int id;
  @override
  final String name;
  final String speed;
  final String shadow;
  final int price;
  final String imageUrl;
  @override
  final String iconUrl;
  final String description;
  final String catchPhrase;

  SeaMonster({
    required this.description,
    required this.iconUrl,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.shadow,
    required this.speed,
    required this.catchPhrase,
  });
}
