part of 'current_time_bloc.dart';

abstract class CurrentTimeEvent extends Equatable {
  const CurrentTimeEvent();

  @override
  List<Object> get props => [];
}

class UpdatedDateTimeEvent extends CurrentTimeEvent {}

