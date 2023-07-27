import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran/src/models/surah.dart';

class ApiService {
  static const allSurahBaseUrl = "https://api.quran.gading.dev";
  Future<List<Surah>> fetchSurahList() async {
    final url = Uri.parse('$allSurahBaseUrl/surah');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsons = jsonDecode(response.body)["data"];
      final jsonResponse = [for (final json in jsons) Surah.fromJson(json)];
      return jsonResponse;
    } else {
      throw Exception("error to load");
    }
  }
}
