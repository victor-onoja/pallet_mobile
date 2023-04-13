class ServicesCloseToYouModel {
  late String title, price, image, rating, company, location;
  late bool negotiable;
  ServicesCloseToYouModel(
      {required this.title,
      required this.image,
      required this.price,
      required this.company,
      required this.location,
      required this.rating,
      required this.negotiable});
}

List servicesCloseToYou = [
  ServicesCloseToYouModel(
      title: 'Outdoor Photography',
      image: 'assets/png/cam.png',
      price: '₦ 15, 000',
      company: 'Studio 199 Photography',
      location: 'Asokoro',
      rating: '4.8',
      negotiable: false),
  ServicesCloseToYouModel(
      title: 'Acrylic Nail & Design',
      image: 'assets/png/cam.png',
      price: '₦ 25, 000',
      company: 'Parons Beauty Home',
      location: 'Maitama',
      rating: '4.9',
      negotiable: true),
  ServicesCloseToYouModel(
      title: 'Crochet fixing and Styling',
      image: 'assets/png/cam.png',
      price: '₦ 25, 000',
      company: 'Parons Beauty Home',
      location: 'Maitama',
      rating: '4.9',
      negotiable: false)
];
