part of 'surah_details_bloc.dart';

enum SurahDetailsStatus { initial, loading, success, failure }

final class SurahDetailsState extends Equatable {
  const SurahDetailsState({
    this.status = SurahDetailsStatus.initial,
    this.statusMsg = '',
    this.surahDetails = const [],
  });

  final SurahDetailsStatus status;
  final String statusMsg;
  final List<SurahDetails> surahDetails;

  @override
  List<Object> get props => [status, statusMsg, surahDetails];

  SurahDetailsState copyWith({
    SurahDetailsStatus? status,
    String? statusMsg,
    List<SurahDetails>? surahDetails,
  }) {
    return SurahDetailsState(
      status: status ?? this.status,
      statusMsg: statusMsg ?? this.statusMsg,
      surahDetails: surahDetails ?? this.surahDetails,
    );
  }
}
