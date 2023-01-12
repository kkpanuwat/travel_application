// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class News {
  String id;
  String title;
  String detail;
  News({
    required this.id,
    required this.title,
    required this.detail,
  });

  News copyWith({
    String? id,
    String? title,
    String? detail,
  }) {
    return News(
      id: id ?? this.id,
      title: title ?? this.title,
      detail: detail ?? this.detail,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'detail': detail,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    return News(
      id: map['id'] as String,
      title: map['title'] as String,
      detail: map['detail'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory News.fromJson(String source) =>
      News.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'News(id: $id, title: $title, detail: $detail)';

  @override
  bool operator ==(covariant News other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && other.detail == detail;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ detail.hashCode;
}
