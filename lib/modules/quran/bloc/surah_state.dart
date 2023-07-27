part of 'surah_bloc.dart';

enum SurahStatus { initial, loading, loaded, error }

final class SurahState extends Equatable {
  const SurahState({
    required this.status,
    required this.error,
    required this.surah,
  });

  factory SurahState.initial() => const SurahState(
        status: SurahStatus.initial,
        error: '',
        surah: [],
      );

  final SurahStatus status;
  final String error;
  final List<Surah> surah;

  @override
  List<Object> get props => [status, error, surah];

  SurahState copyWith({
    SurahStatus? status,
    String? error,
    List<Surah>? surah,
  }) {
    return SurahState(
      status: status ?? this.status,
      error: error ?? this.error,
      surah: surah ?? this.surah,
    );
  }
}
