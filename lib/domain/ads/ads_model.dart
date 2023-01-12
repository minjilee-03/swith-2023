class Ads {
  late int id;
  late String title;
  late String contents;
  late String img;
  late DateTime createdAt;
  late DateTime updatedAt;

  Ads({
    this.id = 0,
    this.title = '',
    this.contents = '',
    this.img = '',
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    this.createdAt = createdAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.updatedAt = updatedAt ?? DateTime.parse('2000-01-01 00:00:00');
  }

  factory Ads.fromJson(Map json) {
    DateTime? tempCreatedAt;
    DateTime? tempUpdatedAt;
    if (json['created_at'] != null) {
      tempCreatedAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] != null) {
      tempUpdatedAt = DateTime.parse(json['updated_at']);
    }
    return Ads(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      contents: json['contents'] ?? '',
      img: json['img'] ?? '',
      createdAt: tempCreatedAt,
      updatedAt: tempUpdatedAt,
    );
  }
}
