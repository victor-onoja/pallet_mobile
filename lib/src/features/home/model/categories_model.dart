class CategoriesModel {
  late String title, image;
  CategoriesModel({
    required this.title,
    required this.image,
  });
}

List categories = [
  CategoriesModel(title: 'Hair Stylist', image: 'assets/png/hair.png'),
  CategoriesModel(title: 'Hair Stylist', image: 'assets/png/hair.png'),
  CategoriesModel(title: 'Nail Technician', image: 'assets/png/hair.png'),
];
