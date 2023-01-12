class Reply {
  late int id;
  late int userId;
  late int parent;
  late String contents;
  late DateTime createdAt;
  late DateTime updatedAt;

  Reply({
    this.id = 0,
    this.userId = 0,
    this.parent = 0,
    this.contents = '',
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    this.createdAt = createdAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.updatedAt = updatedAt ?? DateTime.parse('2000-01-01 00:00:00');
  }

  factory Reply.fromJson(Map json) {
    DateTime? tempCreatedAt;
    DateTime? tempUpdatedAt;
    if (json['created_at'] != null) {
      tempCreatedAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] != null) {
      tempUpdatedAt = DateTime.parse(json['updated_at']);
    }
    return Reply(
      id: json['id'] ?? 0,
      userId: json['user_id'] ?? 0,
      parent: json['parent'] ?? 0,
      contents: json['contents'] ?? '',
      createdAt: tempCreatedAt,
      updatedAt: tempUpdatedAt,
    );
  }
}
