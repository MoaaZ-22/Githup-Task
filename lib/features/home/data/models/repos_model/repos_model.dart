import 'package:githup_app/features/home/data/models/repos_model/owner.dart';
import 'package:githup_app/features/home/data/models/repos_model/permissions.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';

/// class ReposModel that contain list of ReposResult
class ReposModel {
  /// ReposModel constructor
  ReposModel({
    this.repos,
  });

  /// fromJson is used to convert the json to ReposModel
  factory ReposModel.fromJson(List<dynamic> json) => ReposModel(
        repos: (json as List<dynamic>?)
            ?.map((e) => ReposResult.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  /// items
  List<ReposResult>? repos;
}

/// ReposResult
///  is used to manage the Repos Model
class ReposResult extends RepoEntity {
  /// ReposResult
  ///  constructor
  ReposResult({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.hasDiscussions,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.allowForking,
    this.isTemplate,
    this.webCommitSignoffRequired,
    this.topics,
    this.visibility,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
    this.permissions,
  }) : super(
          nameE: name!,
          mainBranchE: defaultBranch!,
          dateE: DateTime.parse(createdAt!),
          ownerE: owner!.login!,
          imageE: owner.avatarUrl!,
        );

  /// fromJson is used to convert the json to ReposResult
  ///
  factory ReposResult.fromJson(Map<String, dynamic> json) => ReposResult(
        id: json['id'] as int?,
        nodeId: json['node_id'] as String?,
        name: json['name'] as String?,
        fullName: json['full_name'] as String?,
        private: json['private'] as bool?,
        owner: json['owner'] == null
            ? null
            : Owner.fromJson(json['owner'] as Map<String, dynamic>),
        htmlUrl: json['html_url'] as String?,
        description: json['description'] as dynamic,
        fork: json['fork'] as bool?,
        url: json['url'] as String?,
        forksUrl: json['forks_url'] as String?,
        keysUrl: json['keys_url'] as String?,
        collaboratorsUrl: json['collaborators_url'] as String?,
        teamsUrl: json['teams_url'] as String?,
        hooksUrl: json['hooks_url'] as String?,
        issueEventsUrl: json['issue_events_url'] as String?,
        eventsUrl: json['events_url'] as String?,
        assigneesUrl: json['assignees_url'] as String?,
        branchesUrl: json['branches_url'] as String?,
        tagsUrl: json['tags_url'] as String?,
        blobsUrl: json['blobs_url'] as String?,
        gitTagsUrl: json['git_tags_url'] as String?,
        gitRefsUrl: json['git_refs_url'] as String?,
        treesUrl: json['trees_url'] as String?,
        statusesUrl: json['statuses_url'] as String?,
        languagesUrl: json['languages_url'] as String?,
        stargazersUrl: json['stargazers_url'] as String?,
        contributorsUrl: json['contributors_url'] as String?,
        subscribersUrl: json['subscribers_url'] as String?,
        subscriptionUrl: json['subscription_url'] as String?,
        commitsUrl: json['commits_url'] as String?,
        gitCommitsUrl: json['git_commits_url'] as String?,
        commentsUrl: json['comments_url'] as String?,
        issueCommentUrl: json['issue_comment_url'] as String?,
        contentsUrl: json['contents_url'] as String?,
        compareUrl: json['compare_url'] as String?,
        mergesUrl: json['merges_url'] as String?,
        archiveUrl: json['archive_url'] as String?,
        downloadsUrl: json['downloads_url'] as String?,
        issuesUrl: json['issues_url'] as String?,
        pullsUrl: json['pulls_url'] as String?,
        milestonesUrl: json['milestones_url'] as String?,
        notificationsUrl: json['notifications_url'] as String?,
        labelsUrl: json['labels_url'] as String?,
        releasesUrl: json['releases_url'] as String?,
        deploymentsUrl: json['deployments_url'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        pushedAt: json['pushed_at'] as String?,
        gitUrl: json['git_url'] as String?,
        sshUrl: json['ssh_url'] as String?,
        cloneUrl: json['clone_url'] as String?,
        svnUrl: json['svn_url'] as String?,
        homepage: json['homepage'] as dynamic,
        size: json['size'] as int?,
        stargazersCount: json['stargazers_count'] as int?,
        watchersCount: json['watchers_count'] as int?,
        language: json['language'] as String?,
        hasIssues: json['has_issues'] as bool?,
        hasProjects: json['has_projects'] as bool?,
        hasDownloads: json['has_downloads'] as bool?,
        hasWiki: json['has_wiki'] as bool?,
        hasPages: json['has_pages'] as bool?,
        hasDiscussions: json['has_discussions'] as bool?,
        forksCount: json['forks_count'] as int?,
        mirrorUrl: json['mirror_url'] as dynamic,
        archived: json['archived'] as bool?,
        disabled: json['disabled'] as bool?,
        openIssuesCount: json['open_issues_count'] as int?,
        license: json['license'] as dynamic,
        allowForking: json['allow_forking'] as bool?,
        isTemplate: json['is_template'] as bool?,
        webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
        topics: json['topics'] as List<dynamic>?,
        visibility: json['visibility'] as String?,
        forks: json['forks'] as int?,
        openIssues: json['open_issues'] as int?,
        watchers: json['watchers'] as int?,
        defaultBranch: json['default_branch'] as String?,
        permissions: json['permissions'] == null
            ? null
            : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      );

  /// id
  int? id;

  /// nodeId
  String? nodeId;

  /// name
  String? name;

  /// fullName
  String? fullName;

  /// private
  bool? private;

  /// owner
  Owner? owner;

  /// htmlUrl
  String? htmlUrl;

  /// description
  dynamic description;

  /// fork
  bool? fork;

  /// url
  String? url;

  /// forksUrl
  String? forksUrl;

  /// keysUrl
  String? keysUrl;

  /// collaboratorsUrl
  String? collaboratorsUrl;

  /// teamsUrl
  String? teamsUrl;

  /// hooksUrl
  String? hooksUrl;

  /// issueEventsUrl
  String? issueEventsUrl;

  /// eventsUrl
  String? eventsUrl;

  /// assigneesUrl
  String? assigneesUrl;

  /// branchesUrl
  String? branchesUrl;

  /// tagsUrl
  String? tagsUrl;

  /// blobsUrl
  String? blobsUrl;

  /// gitTagsUrl
  String? gitTagsUrl;

  /// gitRefsUrl
  String? gitRefsUrl;

  /// treesUrl
  String? treesUrl;

  /// statusesUrl
  String? statusesUrl;

  /// languagesUrl
  String? languagesUrl;

  /// stargazersUrl
  String? stargazersUrl;

  /// contributorsUrl
  String? contributorsUrl;

  /// subscribersUrl
  String? subscribersUrl;

  /// subscriptionUrl
  String? subscriptionUrl;

  /// commitsUrl
  String? commitsUrl;

  /// gitCommitsUrl
  String? gitCommitsUrl;

  /// commentsUrl
  String? commentsUrl;

  /// issueCommentUrl
  String? issueCommentUrl;

  /// contentsUrl
  String? contentsUrl;

  /// compareUrl
  String? compareUrl;

  /// mergesUrl
  String? mergesUrl;

  /// archiveUrl
  String? archiveUrl;

  /// downloadsUrl
  String? downloadsUrl;

  /// issuesUrl
  String? issuesUrl;

  /// pullsUrl
  String? pullsUrl;

  /// milestonesUrl
  String? milestonesUrl;

  /// notificationsUrl
  String? notificationsUrl;

  /// labelsUrl
  String? labelsUrl;

  /// releasesUrl
  String? releasesUrl;

  /// deploymentsUrl
  String? deploymentsUrl;

  /// createdAt
  String? createdAt;

  /// updatedAt
  String? updatedAt;

  /// pushedAt
  String? pushedAt;

  /// gitUrl
  String? gitUrl;

  /// sshUrl
  String? sshUrl;

  /// cloneUrl
  String? cloneUrl;

  /// svnUrl
  String? svnUrl;

  /// homepage
  dynamic homepage;

  /// size
  int? size;

  /// stargazersCount
  int? stargazersCount;

  /// watchersCount
  int? watchersCount;

  /// language
  String? language;

  /// hasIssues
  bool? hasIssues;

  /// hasProjects
  bool? hasProjects;

  /// hasDownloads
  bool? hasDownloads;

  /// hasWiki
  bool? hasWiki;

  /// hasPages
  bool? hasPages;

  /// hasDiscussions
  bool? hasDiscussions;

  /// forksCount
  int? forksCount;

  /// mirrorUrl
  dynamic mirrorUrl;

  /// archived
  bool? archived;

  /// disabled
  bool? disabled;

  /// openIssuesCount
  int? openIssuesCount;

  /// license
  dynamic license;

  /// allowForking
  bool? allowForking;

  /// isTemplate
  bool? isTemplate;

  /// webCommitSignoffRequired
  bool? webCommitSignoffRequired;

  /// topics
  List<dynamic>? topics;

  /// visibility
  String? visibility;

  /// forks
  int? forks;

  /// openIssues
  int? openIssues;

  /// watchers
  int? watchers;

  /// defaultBranch
  String? defaultBranch;

  /// permissions
  Permissions? permissions;

  /// toJson is used to convert the ReposResult
  ///  to json
  Map<String, dynamic> toJson() => {
        'id': id,
        'node_id': nodeId,
        'name': name,
        'full_name': fullName,
        'private': private,
        'owner': owner?.toJson(),
        'html_url': htmlUrl,
        'description': description,
        'fork': fork,
        'url': url,
        'forks_url': forksUrl,
        'keys_url': keysUrl,
        'collaborators_url': collaboratorsUrl,
        'teams_url': teamsUrl,
        'hooks_url': hooksUrl,
        'issue_events_url': issueEventsUrl,
        'events_url': eventsUrl,
        'assignees_url': assigneesUrl,
        'branches_url': branchesUrl,
        'tags_url': tagsUrl,
        'blobs_url': blobsUrl,
        'git_tags_url': gitTagsUrl,
        'git_refs_url': gitRefsUrl,
        'trees_url': treesUrl,
        'statuses_url': statusesUrl,
        'languages_url': languagesUrl,
        'stargazers_url': stargazersUrl,
        'contributors_url': contributorsUrl,
        'subscribers_url': subscribersUrl,
        'subscription_url': subscriptionUrl,
        'commits_url': commitsUrl,
        'git_commits_url': gitCommitsUrl,
        'comments_url': commentsUrl,
        'issue_comment_url': issueCommentUrl,
        'contents_url': contentsUrl,
        'compare_url': compareUrl,
        'merges_url': mergesUrl,
        'archive_url': archiveUrl,
        'downloads_url': downloadsUrl,
        'issues_url': issuesUrl,
        'pulls_url': pullsUrl,
        'milestones_url': milestonesUrl,
        'notifications_url': notificationsUrl,
        'labels_url': labelsUrl,
        'releases_url': releasesUrl,
        'deployments_url': deploymentsUrl,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'pushed_at': pushedAt,
        'git_url': gitUrl,
        'ssh_url': sshUrl,
        'clone_url': cloneUrl,
        'svn_url': svnUrl,
        'homepage': homepage,
        'size': size,
        'stargazers_count': stargazersCount,
        'watchers_count': watchersCount,
        'language': language,
        'has_issues': hasIssues,
        'has_projects': hasProjects,
        'has_downloads': hasDownloads,
        'has_wiki': hasWiki,
        'has_pages': hasPages,
        'has_discussions': hasDiscussions,
        'forks_count': forksCount,
        'mirror_url': mirrorUrl,
        'archived': archived,
        'disabled': disabled,
        'open_issues_count': openIssuesCount,
        'license': license,
        'allow_forking': allowForking,
        'is_template': isTemplate,
        'web_commit_signoff_required': webCommitSignoffRequired,
        'topics': topics,
        'visibility': visibility,
        'forks': forks,
        'open_issues': openIssues,
        'watchers': watchers,
        'default_branch': defaultBranch,
        'permissions': permissions?.toJson(),
      };
}
