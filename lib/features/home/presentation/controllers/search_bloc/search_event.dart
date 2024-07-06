part of 'search_bloc.dart';

/// SearchEvent abstract class is used to define the methods that will
sealed class SearchEvent {}

/// SearchReposEvent class is used to search the repos data from the server.
class SearchReposEvent extends SearchEvent {
  /// SearchReposEvent constructor is used to initialize the
  ///  SearchReposEvent class.
  SearchReposEvent({this.page, this.query});

  /// query is a string variable used to search the repos data from the server.
  final String? query;

  /// page is a string variable used to search the repos data from the server.
  int? page;
}
