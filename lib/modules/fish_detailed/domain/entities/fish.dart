class Fish {
  final String name;
  final int id;
  final String imageUrl;
  final String iconUrl;
  final num price;
  final String description;
  final String catchPhrase;
  final String typeShadow;
  final String monthsNothern;
  final String monthsSouthern;
  final String rarity;
  final String location;
  final bool isAllDay;
  final bool isAllYear;

  Fish({
    required this.iconUrl,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.description,
    required this.rarity,
    required this.isAllDay,
    required this.isAllYear,
    required this.location,
    required this.catchPhrase,
    required this.typeShadow,
    required this.monthsNothern,
    required this.monthsSouthern,
  });
}
