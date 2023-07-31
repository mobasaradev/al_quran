import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/shared/shared.dart';

part 'surah_list_event.dart';
part 'surah_list_state.dart';

class SurahListBloc extends Bloc<SurahListEvent, SurahListState> {
  SurahListBloc({required SurahRepositoryImpl surahListRepoImpl})
      : _surahListRepoImpl = surahListRepoImpl,
        super(const SurahListState()) {
    on<SurahListEventFetched>(_onFetched);
  }
  final SurahRepositoryImpl _surahListRepoImpl;

  void _onFetched(
    SurahListEventFetched event,
    Emitter<SurahListState> emit,
  ) async {
    emit(state.copyWith(status: SurahListStatus.loading));

    final surahList = await _surahListRepoImpl.getSurahList();
    if (surahList.isEmpty) {
      emit(
        state.copyWith(
          status: SurahListStatus.failure,
          statusMsg: "Failed",
        ),
      );
    } else {
      emit(
        state.copyWith(status: SurahListStatus.success, surahList: surahList),
      );
    }
  }
}
