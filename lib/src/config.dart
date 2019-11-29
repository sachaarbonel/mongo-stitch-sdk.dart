import 'package:http/http.dart' as http;

class StitchClientConfiguration {
  /// (REQUIRED)
  ///
  /// The base URL of the Stitch server that the client will communicate
  /// with. By default, this should be "https://stitch.mongodb.com".
  ///
  final String baseUrl;
  //final http.Client transport;
  StitchClientConfiguration({this.baseUrl}); // this.transport
}

class StitchAppClientConfiguration extends StitchClientConfiguration {
  /// (REQUIRED)
  ///
  /// The name of the local application, as it should be reported
  /// to the Stitch server. By default, the Stitch interface should
  /// attempt to infer this information from platform-specific context.
  ////
  String localAppName;

  /// (REQUIRED)
  ///
  /// The version of the local application, as it should be reported
  /// to the Stitch server. By default, the Stitch interface should
  /// attempt to infer this information from platform-specific context.
  ////
  String localAppVersion;

  StitchAppClientConfiguration({
    this.localAppName,
    this.localAppVersion,
    String baseUrl,
  }) //  http.Client transport
  : super(baseUrl: baseUrl); //transport: transport
}
