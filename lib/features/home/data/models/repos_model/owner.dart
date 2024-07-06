/// Owner model.
class Owner {
  /// Required parameters to create a [Owner] instance.
  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
  });

  /// Required parameters to create a [Owner] instance.
  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: json['login'] as String?,
        id: json['id'] as int?,
        nodeId: json['node_id'] as String?,
        avatarUrl: json['avatar_url'] as String?,
        gravatarId: json['gravatar_id'] as String?,
        url: json['url'] as String?,
        htmlUrl: json['html_url'] as String?,
        followersUrl: json['followers_url'] as String?,
        followingUrl: json['following_url'] as String?,
        gistsUrl: json['gists_url'] as String?,
        starredUrl: json['starred_url'] as String?,
        subscriptionsUrl: json['subscriptions_url'] as String?,
        organizationsUrl: json['organizations_url'] as String?,
        reposUrl: json['repos_url'] as String?,
        eventsUrl: json['events_url'] as String?,
        receivedEventsUrl: json['received_events_url'] as String?,
        type: json['type'] as String?,
        siteAdmin: json['site_admin'] as bool?,
      );

  /// Login of the owner.
  String? login;

  /// ID of the owner.
  int? id;

  /// Node ID of the owner.
  String? nodeId;

  /// Avatar URL of the owner.
  String? avatarUrl;

  /// Gravatar ID of the owner.
  String? gravatarId;

  /// URL of the owner.
  String? url;

  /// HTML URL of the owner.
  String? htmlUrl;

  /// Followers URL of the owner.
  String? followersUrl;

  /// Following URL of the owner.
  String? followingUrl;

  /// Gists URL of the owner.
  String? gistsUrl;

  /// Starred URL of the owner.
  String? starredUrl;

  /// Subscriptions URL of the owner.
  String? subscriptionsUrl;

  /// Organizations URL of the owner.
  String? organizationsUrl;

  /// Repos URL of the owner.
  String? reposUrl;

  /// Events URL of the owner.
  String? eventsUrl;

  /// Received events URL of the owner.
  String? receivedEventsUrl;

  /// Type of the owner.
  String? type;

  /// Site admin of the owner.
  bool? siteAdmin;

  /// Convert the [Owner] instance to a JSON object.
  Map<String, dynamic> toJson() => {
        'login': login,
        'id': id,
        'node_id': nodeId,
        'avatar_url': avatarUrl,
        'gravatar_id': gravatarId,
        'url': url,
        'html_url': htmlUrl,
        'followers_url': followersUrl,
        'following_url': followingUrl,
        'gists_url': gistsUrl,
        'starred_url': starredUrl,
        'subscriptions_url': subscriptionsUrl,
        'organizations_url': organizationsUrl,
        'repos_url': reposUrl,
        'events_url': eventsUrl,
        'received_events_url': receivedEventsUrl,
        'type': type,
        'site_admin': siteAdmin,
      };
}
