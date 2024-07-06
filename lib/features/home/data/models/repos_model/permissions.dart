/// Permissions model
class Permissions {
  /// Permissions model.
  Permissions({
    this.admin,
    this.maintain,
    this.push,
    this.triage,
    this.pull,
  });

  /// Required parameters to create a [Permissions] instance.
  factory Permissions.fromJson(Map<String, dynamic> json) => Permissions(
        admin: json['admin'] as bool?,
        maintain: json['maintain'] as bool?,
        push: json['push'] as bool?,
        triage: json['triage'] as bool?,
        pull: json['pull'] as bool?,
      );

  /// Admin permission.
  bool? admin;

  /// Maintain permission.
  bool? maintain;

  /// Push permission.
  bool? push;

  /// Triage permission.
  bool? triage;

  /// Pull permission.
  bool? pull;

  /// Convert the [Permissions] object to a JSON object.
  Map<String, dynamic> toJson() => {
        'admin': admin,
        'maintain': maintain,
        'push': push,
        'triage': triage,
        'pull': pull,
      };
}
