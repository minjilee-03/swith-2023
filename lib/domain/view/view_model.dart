import '../category/category.dart';
import '../reply/reply_model.dart';
import '../user/user_model.dart';

class View {
  late int id;
  late String title;
  late String contents;
  late int userId;
  late int categoryId;
  late DateTime createdAt;
  late DateTime updatedAt;
  late Categorys category;
  late List<Reply> reply;
  late User user;

  View({
    this.id = 0,
    this.title = '',
    this.contents = '',
    this.userId = 0,
    this.categoryId = 0,
    Categorys? category,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Reply>? reply,
    User? user,
  }) {
    this.createdAt = createdAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.updatedAt = updatedAt ?? DateTime.parse('2000-01-01 00:00:00');
    this.category = category ?? Categorys();
    this.reply = reply ?? [];
    this.user = user ?? User();
  }

  factory View.fromJson(Map json) {
    final List<Reply> tmpReply = [];
    if (json['reply'] != null) {
      final tmpArr = json['reply'] as List;
      for (var r in tmpArr) {
        tmpReply.add(Reply.fromJson(r));
      }
    }

    DateTime? tempCreatedAt;
    DateTime? tempUpdatedAt;
    if (json['created_at'] != null) {
      tempCreatedAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] != null) {
      tempUpdatedAt = DateTime.parse(json['updated_at']);
    }
    return View(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      contents: json['contents'] ?? '',
      userId: json['user_id'] ?? 0,
      categoryId: json['categiry_id'] ?? 0,
      createdAt: tempCreatedAt,
      updatedAt: tempUpdatedAt,
      category: Categorys.fromJson(json['category']),
      reply: tmpReply,
      user: User.fromJson(json['user']),
    );
  }
}
