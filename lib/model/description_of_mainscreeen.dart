class Plant {
  final String imageUrl;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;

  Plant({
    this.imageUrl,
    this.name,
    this.category,
    this.price,
    this.size,
    this.description,
  });
}

final List<Plant> plants = [
  Plant(
    imageUrl: 'images/plant0.png',
    name: 'Nail Art',
    category: 'Recent',
    price: 25,
    size: 'Small',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur',
  ),
  Plant(
    imageUrl: 'images/plant1.png',
    name: 'Ayurveda',
    category: 'Most Watched',
    price: 30,
    size: 'Medium',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur.',
  ),
  Plant(
    imageUrl: 'images/plant2.png',
    name: 'Beauty',
    category: 'Recent',
    price: 42,
    size: 'Large',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
  ),
];