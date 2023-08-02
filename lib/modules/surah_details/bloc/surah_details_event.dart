part of 'surah_details_bloc.dart';

abstract class SurahDetailsEvent extends Equatable {
  const SurahDetailsEvent();

  @override
  List<Object> get props => [];
}

class SurahDetailsEventFetched extends SurahDetailsEvent {
  const SurahDetailsEventFetched(this.id);
  final int id;
}
