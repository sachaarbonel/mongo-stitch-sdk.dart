import 'package:mongo_stitch_sdk/src/auth.dart';
import 'package:mongo_stitch_sdk/src/config.dart';

class StitchAppClient {
  String clientAppId;
  StitchAppClientConfiguration config;
  StitchAppClient(this.clientAppId, this.config);

  /// (REQUIRED)
  ///
  /// Gets a StitchAuth object which can be used to view and modify the
  /// authentication status of this Stitch client.
  ////
  StitchAuth getAuth() {
    return StitchAuth(clientAppId, config);
  }
}
