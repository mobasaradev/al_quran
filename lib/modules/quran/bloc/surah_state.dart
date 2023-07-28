// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'surah_bloc.dart';

enum SurahStatus { initial, loading, success, failure }

class SurahState extends Equatable {
  const SurahState({
    this.status = SurahStatus.initial,
    this.statusMsg = '',
    this.surahs = const [],
  });

  final SurahStatus status;
  final String statusMsg;
  final List<Surah> surahs;

  @override
  List<Object> get props => [status, statusMsg, surahs];

  SurahState copyWith({
    SurahStatus? status,
    String? statusMsg,
    List<Surah>? surahs,
  }) {
    return SurahState(
      status: status ?? this.status,
      statusMsg: statusMsg ?? this.statusMsg,
      surahs: surahs ?? this.surahs,
    );
  }
}
