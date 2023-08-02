import 'package:quran/shared/shared.dart';

abstract class Repository {
  Future<List<Surah>> getSurah();
  Future<List<SurahDetails>> getSurahDetails(int id);
}
