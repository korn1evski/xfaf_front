class OrphanageEntity {
  OrphanageEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.image,
    this.text,
    required this.location
  });

  final int id;
  final int userId;
  final String name;
  final String image;
  final String? text;
  final String location;

  factory OrphanageEntity.fromJson(Map<String, dynamic> json) => OrphanageEntity(
    id: json["id"],
    userId: json["user_id"],
    name: json["name"],
    image: json["image"]["image"],
    text: json["text"],
    location: json["location"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "name": name,
    "image": image,
    "text": text,
    "location": location,
  };
}
