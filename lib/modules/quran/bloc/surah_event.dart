part of 'surah_bloc.dart';

abstract class SurahListEvent extends Equatable {
  const SurahListEvent();

  @override
  List<Object> get props => [];
}

class SurahListEventFetched extends SurahListEvent {}
