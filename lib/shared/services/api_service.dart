import 'dart:io';
import 'package:http/http.dart';

class ApiService {
  Future<StreamedResponse?> fetchSurahs() async {
    final url = Uri.parse('https://api.quran.gading.dev/surah');
    final request = StreamedRequest('GET', url);
    try {
      final response = await request.send();
      print(response.reasonPhrase);
      if (response.statusCode == HttpStatus.ok) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(
        "Couldn't fetch surahs, $e",
      );
    }
  }
}


