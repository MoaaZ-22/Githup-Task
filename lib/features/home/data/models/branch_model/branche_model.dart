import 'package:githup_app/features/home/data/models/branch_model/commit.dart';
import 'package:githup_app/features/home/data/models/branch_model/protection.dart';
import 'package:githup_app/features/home/domain/entities/branch_entity.dart';

/// BranchModel is used to manage the branch model

class BranchModel {
  /// BranchModel constructor
  BranchModel({
    this.branches,
  });

  /// fromJson is used to convert the json to BranchModel
  factory BranchModel.fromJson(List<dynamic> json) => BranchModel(
        branches: (json as List<dynamic>?)
            ?.map((e) => BranchResult.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  /// items
  List<BranchResult>? branches;
}

/// BranchResult is used to manage the branch model
class BranchResult extends BranchEntity {
  /// BranchModel constructor
  BranchResult({
    this.name,
    this.commit,
    this.protected,
    this.protection,
    this.protectionUrl,
  }) : super(nameE: name!);

  /// BranchResult.fromJson is used to convert the json object
  factory BranchResult.fromJson(Map<String, dynamic> json) => BranchResult(
        name: json['name'] as String?,
        commit: json['commit'] == null
            ? null
            : Commit.fromJson(json['commit'] as Map<String, dynamic>),
        protected: json['protected'] as bool?,
        protection: json['protection'] == null
            ? null
            : Protection.fromJson(json['protection'] as Map<String, dynamic>),
        protectionUrl: json['protection_url'] as String?,
      );

  /// Name
  String? name;

  /// Commit
  Commit? commit;

  /// Protected
  bool? protected;

  /// Protection
  Protection? protection;

  /// Protection Url
  String? protectionUrl;

  /// BranchModel.toJson is used to convert the model to json object
  Map<String, dynamic> toJson() => {
        'name': name,
        'commit': commit?.toJson(),
        'protected': protected,
        'protection': protection?.toJson(),
        'protection_url': protectionUrl,
      };
}
