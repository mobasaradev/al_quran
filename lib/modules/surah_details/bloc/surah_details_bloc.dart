import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/shared/shared.dart';

part 'surah_details_event.dart';
part 'surah_details_state.dart';

class SurahDetailsBloc extends Bloc<SurahDetailsEvent, SurahDetailsState> {
  SurahDetailsBloc( {required SurahRepositoryImpl surahDetailsRepoImpl})
      : _surahDetailsRepoImpl = surahDetailsRepoImpl,
        super(const SurahDetailsState()) {
    on<SurahDetailsEventFetched>(_onDetailsFetched);
  }
  final SurahRepositoryImpl _surahDetailsRepoImpl;
  
  void _onDetailsFetched(
    SurahDetailsEventFetched event,
    Emitter<SurahDetailsState> emit,
  ) async {
    emit(state.copyWith(status: SurahDetailsStatus.loading));

    final surahDetails = await _surahDetailsRepoImpl.getSurahDetails(event.id);
    if (surahDetails.isEmpty) {
      emit(
        state.copyWith(
          status: SurahDetailsStatus.failure,
          statusMsg: "Failed",
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: SurahDetailsStatus.success,
          surahDetails: surahDetails,
        ),
      );
    }
  }
}
