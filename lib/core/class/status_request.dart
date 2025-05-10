enum StatusRequest {
  loading,
  success,
  failure,
  serverFailure,
  // serverException,
  offlineFailure
}

// class RequestResult {
//   final StatusRequest status;
//   final String? message;

//   const RequestResult._(this.status, {this.message});

//   static const RequestResult success = RequestResult._(StatusRequest.success);
//   static const RequestResult failure = RequestResult._(StatusRequest.failure);
//   static const RequestResult offlineFailure = RequestResult._(StatusRequest.offlineFailure);

//   static RequestResult serverFailure(String msg) => RequestResult._(StatusRequest.serverFailure, message: msg);
//   // static RequestResult serverException(String msg) => RequestResult._(StatusRequest.serverException, message: msg);
// }
