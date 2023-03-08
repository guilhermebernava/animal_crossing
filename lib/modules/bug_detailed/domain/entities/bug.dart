import 'package:animal_crossing/commons/interfaces/i_core_grid_item.dart';

class Bug implements ICoreGridItem {
  @override
  final String iconUrl;
  @override
  final String name;
  final int id;
  final String imageUrl;
  final double price;
  final double priceFlick;
  final String catchPhrase;
  final String description;
  final String rarity;
  final String location;
  final String time;
  final String monthsNorthern;
  final String monthsSouthern;

  Bug({
    required this.catchPhrase,
    required this.description,
    required this.iconUrl,
    required this.location,
    required this.id,
    required this.imageUrl,
    required this.monthsNorthern,
    required this.monthsSouthern,
    required this.name,
    required this.price,
    required this.priceFlick,
    required this.rarity,
    required this.time,
  });
}
