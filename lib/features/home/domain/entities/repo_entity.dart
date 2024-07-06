/// [RepoEntity] is a class that contains the properties of a repository.
class RepoEntity {
  /// Required parameters to create a [RepoEntity] instance.
  RepoEntity({
    required this.imageE,
    required this.nameE,
    required this.mainBranchE,
    required this.dateE,
    required this.ownerE,
  });

  /// A method that is used to convert a json
  /// object into a [RepoEntity] instance.
  factory RepoEntity.fromJson(Map<String, dynamic> json) {
    return RepoEntity(
      imageE: json['owner']['avatar_url'] as String,
      nameE: json['name'] as String,
      mainBranchE: json['default_branch'] as String,
      dateE: DateTime.parse(
        json['created_at'] as String,
      ),
      ownerE: json['owner']['login'] as String,
    );
  }

  /// ImageE of the repository.
  final String imageE;

  /// Name of the repository.
  final String nameE;

  /// Main branch of the repository.
  final String mainBranchE;

  /// Date of the repository.
  final DateTime dateE;

  /// Owner of the repository.
  final String ownerE;
}
