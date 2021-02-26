import 'package:flutter/foundation.dart';

/// A User is defined by its email, password, pseudo, description and avatar
class User {
  String email;
  String password;
  String pseudo;
  String description;
  String avatar;

  /// Create a User
  User({
    @required this.email,
    @required this.password,
    @required this.pseudo,
    this.description,
    this.avatar,
  }) : assert(email != null && password != null && pseudo != null);

  /// Create a User from json
  User.fromJson(Map<String, dynamic> json)
      : this(
            email: json['email'],
            password: json['password'],
            pseudo: json['pseudo'],
            description: json['description'],
            avatar: json['avatar']);

  /// Return a User as json map
  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'pseudo': pseudo,
        'description': description,
        'avatar': avatar,
      };
}
