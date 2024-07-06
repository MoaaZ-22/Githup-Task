/// Endpoints for the API
class EndPoints {
  /// https://api.github.com/users/MoaaZ-22/repos

  /// Base url for the API
  static String baseUrl = 'https://api.github.com';

  /// Repositories endpoint
  static String repos = '$baseUrl/users/MoaaZ-22/repos';

  /// Branches endpoint
  static String branches({
    required String repo,
    required String owner,
  }) =>
      '$baseUrl/repos/$owner/$repo/branches';


  /// Search Repositories endpoint
  static String searchRepos({required String query}) =>
      '$baseUrl/search/repositories?q=$query';
}
