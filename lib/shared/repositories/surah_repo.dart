import 'dart:convert';

import 'package:quran/shared/shared.dart';

class SurahListRepo {
  SurahListRepo() : _apiService = ApiService();

  final ApiService _apiService;

  List<SurahList> _parseSurahList(String responseBody) {
    final surahJsons = jsonDecode(responseBody)['data'];
    final surahList = [
      for (final surah in surahJsons) SurahList.fromJson(surah),
    ];
    return surahList;
  }

  Future<List<SurahList>> getSurahList() async {
    final response = await _apiService.fetchSurahList();
    if (response != null) {
      final responseBody = await response.stream.bytesToString();
      return _parseSurahList(responseBody);
    } else {
      return [];
    }
  }
}
