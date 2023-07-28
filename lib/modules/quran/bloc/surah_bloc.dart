import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/shared/shared.dart';
part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  SurahBloc({required SurahRepo surahRepo}) : _surahRepo = surahRepo,super(const SurahState()) {
    on<SurahEventFetched>(_onFetched);
  }
  final SurahRepo _surahRepo;

  void _onFetched(
    SurahEventFetched event,
    Emitter<SurahState> emit,
  ) async {
    emit(state.copyWith(status: SurahStatus.loading));
    final surahs = await _surahRepo.getSurahs();
    if (surahs.isEmpty) {
      emit(
        state.copyWith(
          status: SurahStatus.failure,
          statusMsg: "Failed",
        ),
      );
    } else {
      emit(
        state.copyWith(status: SurahStatus.success, surahs: surahs),
      );
    }
  }
}
