part of 'surah_bloc.dart';

enum SurahStatus { initial, loading, success, failure }

final class SurahState extends Equatable {
  const SurahState({
    this.status = SurahStatus.initial,
    this.statusMsg = '',
    this.surah = const [],
  });

  final SurahStatus status;
  final String statusMsg;
  final List<Surah> surah;

  @override
  List<Object> get props => [status, statusMsg, surah];

  SurahState copyWith({
    SurahStatus? status,
    String? statusMsg,
    List<Surah>? surah,
  }) {
    return SurahState(
      status: status ?? this.status,
      statusMsg: statusMsg ?? this.statusMsg,
      surah: surah ?? this.surah,
    );
  }
}
