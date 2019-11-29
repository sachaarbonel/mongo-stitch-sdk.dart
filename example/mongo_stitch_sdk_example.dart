import 'package:mongo_stitch_sdk/mongo_stitch_sdk.dart';
import 'package:mongo_stitch_sdk/src/stitch_credentials.dart';

main() async {
  final stitch = Stitch.initializeAppClient("asasfezf",
      StitchAppClientConfiguration(baseUrl: "")); //, transport: http.Client
  final auth = stitch.getAuth();
  final login = await auth.loginWithCredential(UserApiKeyCredential(
      material: Material(key: ""),
      options: Options(
          device: Device(
              appId: "yobi",
              appVersion: "0.0.1",
              deviceId:
                  "20:c9:d0:d6:19:09", //ifconfig en1 | awk '/ether/{print $2}'
              platform: "macOS",
              platformVersion: "0.0.1",
              sdkVersion: "0.0.1")),
      providerCapabilities: ProviderCapabilities(reusesExistingSession: false),
      providerName: "api-key",
      providerType: "api-key"));
}
