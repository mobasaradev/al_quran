import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/src/models/surah.dart';
import 'package:quran/src/services/api_service.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  SurahBloc(this.apiService) : super(SurahState.initial()) {
    on<SurahListEvent>(_onSurahListEvent);
  }
  final ApiService apiService;

  void _onSurahListEvent(
    SurahListEvent event,
    Emitter<SurahState> emit,
  ) async {
    emit(state.copyWith(status: SurahStatus.loading));
    final surah = await apiService.fetchSurahList();
    emit(
      state.copyWith(status: SurahStatus.loaded, allSurah: surah),
    );
  }
}
