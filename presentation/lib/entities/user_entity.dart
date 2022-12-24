class UserEnt {
  UserEnt({
    required this.name,
    required this.email,
    required this.accessToken,
    required this.type,
    required this.id,
  });

  final String name;
  final String email;
  final String accessToken;
  final int type;
  final int id;

  factory UserEnt.fromJson(Map<String, dynamic> json) => UserEnt(
    name: json["name"],
    email: json["email"],
    accessToken: json["access_token"],
    type: json["type"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "access_token": accessToken,
    "type": type,
    "id": id,
  };
}
