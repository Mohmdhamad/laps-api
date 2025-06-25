class GeoModel {
  final String lat;
  final String long;

  GeoModel({required this.lat, required this.long});

  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(
      lat: json['lat'],
      long: json['long'],
    );
  }
}

class AddressModel {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final GeoModel geolocation;

  AddressModel({
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
    required this.geolocation,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      city: json['city'],
      street: json['street'],
      number: json['number'],
      zipcode: json['zipcode'],
      geolocation: GeoModel.fromJson(json['geolocation']),
    );
  }
}

class NameModel {
  final String firstname;
  final String lastname;

  NameModel({required this.firstname, required this.lastname});

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(
      firstname: json['firstname'],
      lastname: json['lastname'],
    );
  }
}

class UserModel {
  final int id;
  final String email;
  final String username;
  final String password;
  final NameModel name;
  final AddressModel address;
  final String phone;

  UserModel({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.address,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
      name: NameModel.fromJson(json['name']),
      address: AddressModel.fromJson(json['address']),
      phone: json['phone'],
    );
  }
}
