part of 'models.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String username;
  final String profilePicture;
  final String role;
  final int balance;
  final List<String> wishlist;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.username = '',
    this.profilePicture = '',
    this.role = 'USER',
    this.balance = 0,
    this.wishlist = const [],
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      username: json['username'],
      profilePicture: json['profilePicture'],
      role: json['role'],
      balance: json['balance'],
      wishlist: json['wishlists'],
    );
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
