/// [BranchEntity] is a class that contains the properties of a repository.
class BranchEntity {
  /// Required parameters to create a [BranchEntity] instance.
  BranchEntity({
    required this.nameE,
  });

  /// A method that is used to convert a json
  /// object into a [BranchEntity] instance.
  factory BranchEntity.fromJson(Map<String, dynamic> json) {
    return BranchEntity(
      nameE: json['name'] as String,
    );
  }

  /// Name of the repository.
  final String nameE;
}
