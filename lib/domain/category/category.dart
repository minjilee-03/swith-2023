class Categorys {
  late int id;
  late String name;
  late DateTime createdAt;
  late DateTime updatedAt;

  Categorys({
    this.id = 0,
    this.name = '',
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    this.createdAt = createdAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.updatedAt = updatedAt ?? DateTime.parse('2000-01-01 00:00:00');
  }

  factory Categorys.fromJson(Map json) {
    DateTime? tempCreatedAt;
    DateTime? tempUpdatedAt;
    if (json['created_at'] != null) {
      tempCreatedAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] != null) {
      tempUpdatedAt = DateTime.parse(json['updated_at']);
    }
    return Categorys(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      createdAt: tempCreatedAt,
      updatedAt: tempUpdatedAt,
    );
  }
}
