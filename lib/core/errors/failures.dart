/// this class is used to manage the failures
abstract class Failure {
  /// constructor
  const Failure(this.errMessage);

  /// factory method to create a Failure object from an error object
  factory Failure.handelError(dynamic error) {
    return GithupFailure(error.toString());
    // if (error is Exception) {
    //   return AuthFailure.fromSupabaseError(error);
    // } else {
    //   return NormalFailure(error.toString());
    // }
  }

  /// error message
  final String errMessage;
}

/// a failure class for a normal failure
class NormalFailure extends Failure {
  /// constructor
  const NormalFailure(super.errMessage);
}

/// a failure class for a git hub failure
class GithupFailure extends Failure {
  /// constructor
  const GithupFailure(super.errMessage);
}
