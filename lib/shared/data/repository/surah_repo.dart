import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:quran/shared/shared.dart';

class SurahRepositoryImpl implements Repository {
  SurahRepositoryImpl(this.networkUtil);
  final NetworkUtil networkUtil;

  @override
  Future<List<Surah>> getSurah() async {
    try {
      Response response = await networkUtil.get(UrlConstants.surah);
      if (response.statusCode == HttpStatus.ok) {
        final surahJson = jsonDecode(response.body)['data'];
        final surah = [
          for (final sura in surahJson) Surah.fromJson(sura),
        ];
        return surah;
      } else {
        throw Exception('API call not successful : ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SurahDetails>> getSurahDetails(int id) async {
    try {
      Response response = await networkUtil.get("${UrlConstants.surah}/$id");
      if (response.statusCode == HttpStatus.ok) {
        final surahDetailsJson = jsonDecode(response.body)['data']['verses'];
        final surahDetails = [
          for (final surahDetail in surahDetailsJson)
            SurahDetails.fromJson(surahDetail),
        ];
        return surahDetails;
      } else {
        throw Exception('API call not successful : ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
