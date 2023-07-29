import 'dart:io';

import 'package:http/http.dart';

class ApiService {
  Future<StreamedResponse?> fetchSurahList() async {
    final url = Uri.parse('https://api.quran.gading.dev/surah');
    final request = Request('GET', url);
    try {
      final response = await request.send();
      if (response.statusCode == HttpStatus.ok) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(
        "Couldn't fetch product, $e",
      );
    }
  }
}
