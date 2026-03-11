class AppConfig {
  AppConfig._();
  static late String backendUrl;
  static late String sentryDsn;
  static late String googleWebClientIdForOAuth;
  static late String googleIOSClientIdForOAuth;
  static late String facebookAppId;
  static late String facebookRedirectUri;

  static void config() {
    sentryDsn =
        "https://2852ae91b52d65f1f50e8ffd58bf0cee@o4508552097038336.ingest.us.sentry.io/4509514300129280";
    backendUrl = "https://ijarahub-app-dev.nexill.com/api";

    googleWebClientIdForOAuth = "12345678";
    googleIOSClientIdForOAuth = "12345678";
    facebookAppId = "12345678";
    facebookRedirectUri = "12345678";
  }
}
