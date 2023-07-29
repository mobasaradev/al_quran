part of 'surah_bloc.dart';

enum SurahStatus { initial, loading, success, failure }

final class SurahListState extends Equatable {
  const SurahListState({
    this.status = SurahStatus.initial,
    this.statusMsg = '',
    this.surahList = const [],
  });

  final SurahStatus status;
  final String statusMsg;
  final List<SurahList> surahList;

  @override
  List<Object> get props => [status, statusMsg, surahList];

  SurahListState copyWith({
    SurahStatus? status,
    String? statusMsg,
    List<SurahList>? surahList,
  }) {
    return SurahListState(
      status: status ?? this.status,
      statusMsg: statusMsg ?? this.statusMsg,
      surahList: surahList ?? this.surahList,
    );
  }
}
