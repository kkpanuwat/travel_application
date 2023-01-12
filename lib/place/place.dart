// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Place {
  String image;
  String name;
  String id;
  bool status;
  Place({
    required this.image,
    required this.name,
    required this.id,
    required this.status,
  });

  Place copyWith({
    String? image,
    String? name,
    String? id,
    bool? status,
  }) {
    return Place(
      image: image ?? this.image,
      name: name ?? this.name,
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'id': id,
      'status': status,
    };
  }

  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(
      image: map['image'] as String,
      name: map['name'] as String,
      id: map['id'] as String,
      status: map['status'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) =>
      Place.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Place(image: $image, name: $name, id: $id, status: $status)';
  }

  @override
  bool operator ==(covariant Place other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.name == name &&
      other.id == id &&
      other.status == status;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      name.hashCode ^
      id.hashCode ^
      status.hashCode;
  }
}
