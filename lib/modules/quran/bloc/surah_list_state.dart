part of 'surah_list_bloc.dart';

enum SurahListStatus { initial, loading, success, failure }

final class SurahListState extends Equatable {
  const SurahListState({
    this.status = SurahListStatus.initial,
    this.statusMsg = '',
    this.surahList = const [],
  });

  final SurahListStatus status;
  final String statusMsg;
  final List<SurahList> surahList;

  @override
  List<Object> get props => [status, statusMsg, surahList];

  SurahListState copyWith({
    SurahListStatus? status,
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
