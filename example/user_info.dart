import 'package:nkust_api/src/webap.dart';

void main() async {
  var res = await NKUST_API.instance.apLogin("11111", "12345");

  if (res.errorCode == 1000) {
    var s = await NKUST_API.instance.userInfo();
    if (s.errorCode >= 2000 && s.errorCode <= 2100) {
      print(s.parseData);
    }
  }
}
