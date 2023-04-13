class TrendingServicesModel {
  late String title, price, image;
  TrendingServicesModel(
      {required this.title, required this.image, required this.price});
}

List trendingServices = [
  TrendingServicesModel(
      title: 'Glam Make-Up', image: 'assets/png/hair.png', price: '₦25,000'),
  TrendingServicesModel(
      title: 'Acrylic Nails with design',
      image: 'assets/png/hair.png',
      price: '₦15,000'),
  TrendingServicesModel(
      title: '2hrs Outdoor Photography',
      image: 'assets/png/hair.png',
      price: '₦250,000')
];
