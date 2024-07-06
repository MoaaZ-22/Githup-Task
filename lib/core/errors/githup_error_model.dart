/// Githup error model.
class GithupErrorModel {
  /// Githup error model.
  GithupErrorModel({this.message, this.documentationUrl, this.status});

  /// Required parameters to create a [GithupErrorModel] instance.
  factory GithupErrorModel.fromJson(Map<String, dynamic> json) {
    return GithupErrorModel(
      message: json['message'] as String?,
      documentationUrl: json['documentation_url'] as String?,
      status: json['status'] as String?,
    );
  }

  /// Error message.
  String? message;

  /// Documentation URL.
  String? documentationUrl;

  /// Status.
  String? status;

  /// Convert the [GithupErrorModel] object to a JSON object.
  Map<String, dynamic> toJson() => {
        'message': message,
        'documentation_url': documentationUrl,
        'status': status,
      };
}
