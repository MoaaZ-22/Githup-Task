/// Commit model
class Commit {
  /// Constructor
  Commit({this.sha, this.url});

  /// Method to convert json to model
  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
        sha: json['sha'] as String?,
        url: json['url'] as String?,
      );

  /// Sha
  String? sha;

  /// Url
  String? url;

  /// Method to convert model to json
  Map<String, dynamic> toJson() => {
        'sha': sha,
        'url': url,
      };
}
