import '../category/category.dart';
import '../reply/reply_model.dart';
import '../user/user_model.dart';

class FeedList {
  late int id;
  late String title;
  late String contents;
  late int userId;
  late int categoryId;
  late DateTime createdAt;
  late DateTime updatedAt;

  FeedList({
    this.id = 0,
    this.title = '',
    this.contents = '',
    this.userId = 0,
    this.categoryId = 0,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    this.createdAt = createdAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.updatedAt = updatedAt ?? DateTime.parse('2000-01-01 00:00:00');
  }

  factory FeedList.fromJson(Map json) {
    DateTime? tempCreatedAt;
    DateTime? tempUpdatedAt;
    if (json['created_at'] != null) {
      tempCreatedAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] != null) {
      tempUpdatedAt = DateTime.parse(json['updated_at']);
    }
    return FeedList(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      contents: json['contents'] ?? '',
      userId: json['user_id'] ?? 0,
      categoryId: json['categiry_id'] ?? 0,
      createdAt: tempCreatedAt,
      updatedAt: tempUpdatedAt,
    );
  }
}
