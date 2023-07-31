import 'package:quran/shared/shared.dart';

abstract class Repository {
  Future<List<SurahList>> getSurahList();
  Future<List<SurahDetails>> getSurahDetails();
}
