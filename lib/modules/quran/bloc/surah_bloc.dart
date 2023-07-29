import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/shared/shared.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahListBloc extends Bloc<SurahListEvent, SurahListState> {
  SurahListBloc({required SurahListRepo surahListRepo})
      : _surahListRepo = surahListRepo,
        super(const SurahListState()) {
    on<SurahListEventFetched>(_onFetched);
  }
  final SurahListRepo _surahListRepo;

  void _onFetched(
    SurahListEventFetched event,
    Emitter<SurahListState> emit,
  ) async {
    emit(state.copyWith(status: SurahStatus.loading));

    final surahList = await _surahListRepo.getSurahList();
    if (surahList.isEmpty) {
      emit(
        state.copyWith(
          status: SurahStatus.failure,
          statusMsg: "Failed",
        ),
      );
    } else {
      emit(
        state.copyWith(status: SurahStatus.success, surahList: surahList),
      );
    }
  }
}
