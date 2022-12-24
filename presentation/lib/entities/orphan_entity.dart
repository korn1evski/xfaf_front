class Orphan {
  Orphan({
    required this.id,
    required this.orphanBuildingId,
    required this.firstName,
    required this.lastName,
    required this.birthday,
    required this.image,
    this.text,
  });

  final int id;
  final int orphanBuildingId;
  final String firstName;
  final String lastName;
  final String birthday;
  final String? text;
  List<ImageEntity> image;

  factory Orphan.fromJson(Map<String, dynamic> json) => Orphan(
    id: json["id"],
    orphanBuildingId: json["orphan_building_id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    birthday: json["birthday"],
    image: List<ImageEntity>.from(json["image"].map((x) => ImageEntity.fromJson(x))),
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "orphan_building_id": orphanBuildingId,
    "firstName": firstName,
    "lastName": lastName,
    "birthday": birthday,
    "image": List<dynamic>.from(image.map((x) => x.toJson())),
  };
}

class ImageEntity {
  ImageEntity({
    required this.id,
    required this.image,
  });

  int id;
  String image;

  factory ImageEntity.fromJson(Map<String, dynamic> json) => ImageEntity(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}

