import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:quran/shared/shared.dart';

class SurahRepositoryImpl implements Repository {
  SurahRepositoryImpl(this.networkUtil);
  final NetworkUtil networkUtil;

  @override
  Future<List<SurahList>> getSurahList() async {
    try {
      Response response = await networkUtil.get(UrlConstants.surahList);
      if (response.statusCode == HttpStatus.ok) {
        final surahListJson = jsonDecode(response.body)['data'];
        final surahList = [
          for (final surah in surahListJson) SurahList.fromJson(surah),
        ];
        return surahList;
      } else {
        throw Exception('API call not successful : ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SurahDetails>> getSurahDetails() async {
    try {
      Response response = await networkUtil.get(UrlConstants.surahDetails);
      if (response.statusCode == HttpStatus.ok) {
        final surahDetailsJson = jsonDecode(response.body)['data']['verses'];
        final surahDetail = [
          for (final surahDetail in surahDetailsJson)
            SurahDetails.fromJson(surahDetail),
        ];
        return surahDetail;
      } else {
        throw Exception('API call not successful : ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
