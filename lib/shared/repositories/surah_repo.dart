import 'dart:convert';

import 'package:quran/shared/shared.dart';

class SurahRepo {
  SurahRepo() : _apiService = ApiService();

  final ApiService _apiService;

  List<Surah> _parseSurahs(String responseBody) {
    final surahJsons = jsonDecode(responseBody)['data'];
    final surahs = [for (final surah in surahJsons) Surah.fromJson(surah)];
    return surahs;
  }

  Future<List<Surah>> getSurahs() async {
    final response = await _apiService.fetchSurahs();
    print(response);
    if (response != null) {
      final responseBody = await response.stream.bytesToString();
      print(responseBody);
      return _parseSurahs(responseBody);
    } else {
      return [];
    }
  }
}
