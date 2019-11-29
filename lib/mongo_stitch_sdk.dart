/// ```dart
/// final stitch = Stitch.initializeAppClient("asasfezf",
///       StitchAppClientConfiguration(baseUrl: "")); ///, transport: http.Client
///   final auth = stitch.getAuth();
///   final login = await auth.loginWithCredential(UserApiKeyCredential(
///       /// material: Material(key: ""),
///       options: Options(
///           device: Device(
///               appId: "yobi",
///               appVersion: "0.0.1",
///               deviceId:
///                   "20:c9:d0:d6:19:09", ///ifconfig en1 | awk '/ether/{print $2}'
///               platform: "macOS",
///               platformVersion: "0.0.1",
///               sdkVersion: "0.0.1")),
///       providerCapabilities: ProviderCapabilities(reusesExistingSession: false),
///       providerName: "api-key",
///       providerType: "api-key"));
/// ```
library mongo_stitch_sdk;

export 'src/mongo_stitch_sdk_base.dart';

/// TODO: Export any libraries intended for clients of this package.
