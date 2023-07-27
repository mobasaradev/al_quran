part of 'surah_bloc.dart';

enum SurahStatus { initial, loading, loaded, error }

final class SurahState extends Equatable {
  const SurahState({
    required this.status,
    required this.error,
    required this.allSurah,
  });

  factory SurahState.initial() => const SurahState(
        status: SurahStatus.initial,
        error: '',
        allSurah: [],
      );

  final SurahStatus status;
  final String error;
  final List<Surah> allSurah;

  @override
  List<Object> get props => [status, error, allSurah];

  SurahState copyWith({
    SurahStatus? status,
    String? error,
    List<Surah>? allSurah,
  }) {
    return SurahState(
      status: status ?? this.status,
      error: error ?? this.error,
      allSurah: allSurah ?? this.allSurah,
    );
  }
}
