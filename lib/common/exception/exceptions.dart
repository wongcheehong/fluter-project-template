// sealed class AppException {
//   const factory AppException.permissionDenied() = PermissionDenied;
//   const factory AppException.paymentFailed() = PaymentFailed;
//   const factory AppException.noInternet() = NoInternet;
//   // add other error types here
// }

// extension AppExceptionMessage on AppException {
//   String message(AppLocalizations loc) {
//     return switch (this) {
//       PermissionDenied() => loc.permissionDeniedMessage,
//       PaymentFailed() => loc.paymentFailedMessage,
//       NoInternet() => loc.noInternetConnectionMessage,
//     };
//   }
// }
