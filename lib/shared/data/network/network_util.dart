import 'package:http/http.dart' as http;

class NetworkUtil {
  Future<http.Response> get(String url) async => await http.get(Uri.parse(url));
}

