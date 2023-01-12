class User {
  late int id;
  late String name;
  late String email;
  late DateTime emailVerifiedAt;
  late DateTime createdAt;
  late DateTime updatedAt;

  User({
    this.id = 0,
    this.name = '',
    this.email = '',
    DateTime? emailVerifiedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    this.emailVerifiedAt =
        emailVerifiedAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.createdAt = createdAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.updatedAt = updatedAt ?? DateTime.parse('2000-01-01 00:00:00');
  }

  factory User.fromJson(Map json) {
    DateTime? tempemailVerifiedAt;
    DateTime? tempCreatedAt;
    DateTime? tempUpdatedAt;
    if (json['email_verified_at'] != null) {
      tempemailVerifiedAt = DateTime.parse(json['email_verified_at']);
    }
    if (json['created_at'] != null) {
      tempCreatedAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] != null) {
      tempUpdatedAt = DateTime.parse(json['updated_at']);
    }
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      emailVerifiedAt: tempemailVerifiedAt,
      createdAt: tempCreatedAt,
      updatedAt: tempUpdatedAt,
    );
  }
}
