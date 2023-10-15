class ParticipantModel {
  final String id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  ParticipantModel(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.avatar});

  factory ParticipantModel.fromJson(Map<String, dynamic> data) {
    return ParticipantModel(
      id: data["id"],
      email: data["email"],
      first_name: data["first_name"],
      last_name: data["last_name"],
      avatar: data["avatar"],
    );
  }
}
