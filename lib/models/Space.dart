class Space {
  late int id;
  late String name;
  late String imageUrl;
  late int price;
  late String city;
  late String country;
  late int rating;
  late String address;
  late String phone;
  late String mapUrl;
  late List photos;
  late int numberOfKitchens;
  late int numberOfBedrooms;
  late int numberOfCupboards;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    required this.address,
    required this.mapUrl,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
    required this.numberOfKitchens,
    required this.phone,
    required this.photos
  });

  Space.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    imageUrl = json['image_url'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}