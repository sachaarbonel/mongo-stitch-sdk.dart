import 'package:mongo_stitch_sdk/src/config.dart';
import 'package:mongo_stitch_sdk/src/stitch_credentials.dart';
import 'package:mongo_stitch_sdk/src/stitch_user.dart';
import 'package:http/http.dart' as http;

class StitchAuth {
  final StitchClientConfiguration config;
  final String clientAppId;
  StitchAuth(this.clientAppId, this.config);

  ///(REQUIRED, ASYNC ALLOWED, ERROR POSSIBLE)
  ///
  ///Authenticates the Stitch client using the provided credential.
  ///If the login is successful, additionally fetch the profile of the user.
  Future<StitchUser> loginWithCredential(StitchCredential credential) async {
    var body = credential.toJson();
    var baseUrl = config.baseUrl;
    var client_app_id = clientAppId;
    var provider_name = credential.providerName;
    var loginWithCredentialPath =
        "/api/client/v2.0/app/$client_app_id/auth/providers/$provider_name/login";
    var url = baseUrl + loginWithCredentialPath;
    var response = await http.post(url, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return StitchUser.fromRawJson(response.body);
  }
}
