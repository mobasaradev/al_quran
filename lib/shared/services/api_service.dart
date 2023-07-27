import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quran/shared/models/surah.dart';

class ApiService {
  Future<List<Surah>> fetchSurahList() async {
    final url = Uri.parse('https://api.quran.gading.dev/surah');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)["data"];
      final jsonResponse = [
        for (final data in decodedData) Surah.fromJson(data)
      ];
      return jsonResponse;
    } else {
      throw Exception("error to load");
    }
  }
}
