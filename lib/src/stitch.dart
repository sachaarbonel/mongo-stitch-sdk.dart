import 'package:mongo_stitch_sdk/src/app_client.dart';
import 'package:mongo_stitch_sdk/src/config.dart';

class Stitch {
  /// (REQUIRED, ERROR POSSIBLE)
  ///
  /// Initialize an app client for a specific app and configuration.
  /// The client initialized by this method will be retrievable by
  /// the getAppClient method. If this method is called more than
  /// once for a specific client app ID, it should result in a
  /// language-appropriate error, as only one app client should be specified
  /// for each client app ID.
  ///
  /// If no configuration is specified, a default configuration should
  /// be used. See the sections on Client Configuration for the properties
  /// of a default configuration.
  ///
  /// If appropriate and possible for the environment, this method MAY be
  /// called automatically when the user includes the SDK.
  ////
  static StitchAppClient initializeAppClient(
      String clientAppId, StitchAppClientConfiguration config) {
        return StitchAppClient(clientAppId,config);
      }
}
