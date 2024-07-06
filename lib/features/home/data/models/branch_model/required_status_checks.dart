/// RequiredStatusChecks model
class RequiredStatusChecks {
  /// Constructor
  RequiredStatusChecks({this.enforcementLevel, this.contexts, this.checks});

  /// Method to convert json to model
  factory RequiredStatusChecks.fromJson(Map<String, dynamic> json) {
    return RequiredStatusChecks(
      enforcementLevel: json['enforcement_level'] as String?,
      contexts: json['contexts'] as List<dynamic>?,
      checks: json['checks'] as List<dynamic>?,
    );
  }

  /// EnforcementLevel
  String? enforcementLevel;

  /// Contexts
  List<dynamic>? contexts;

  /// Checks
  List<dynamic>? checks;

  /// Method to convert model to json
  Map<String, dynamic> toJson() => {
        'enforcement_level': enforcementLevel,
        'contexts': contexts,
        'checks': checks,
      };
}
