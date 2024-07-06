import 'package:githup_app/features/home/data/models/branch_model/required_status_checks.dart';

/// Protection is used to manage the protection
class Protection {
  /// Protection constructor
  Protection({this.enabled, this.requiredStatusChecks});

  /// Protection.fromJson is used to convert the json object

  factory Protection.fromJson(Map<String, dynamic> json) => Protection(
        enabled: json['enabled'] as bool?,
        requiredStatusChecks: json['required_status_checks'] == null
            ? null
            : RequiredStatusChecks.fromJson(
                json['required_status_checks'] as Map<String, dynamic>,
              ),
      );

  /// Enabled
  bool? enabled;

  /// RequiredStatusChecks
  RequiredStatusChecks? requiredStatusChecks;

  /// Protection.toJson is used to convert the model to json object

  Map<String, dynamic> toJson() => {
        'enabled': enabled,
        'required_status_checks': requiredStatusChecks?.toJson(),
      };
}
