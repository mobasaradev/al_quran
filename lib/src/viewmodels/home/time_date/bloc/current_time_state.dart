// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'current_time_bloc.dart';

final class CurrentTimeState extends Equatable {
  const CurrentTimeState({this.currentTime = "",this.currentDate = ""});
  final String currentTime;
  final String currentDate;

  @override
  List<Object> get props => [currentTime, currentDate];

  CurrentTimeState copyWith({
    String? currentTime,
    String? currentDate,
  }) {
    return CurrentTimeState(
      currentTime: currentTime ?? this.currentTime,
      currentDate: currentDate ?? this.currentDate,
    );
  }
}
