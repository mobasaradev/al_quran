import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

part 'current_time_event.dart';
part 'current_time_state.dart';

class CurrentTimeBloc extends Bloc<CurrentTimeEvent, CurrentTimeState> {
  late Timer _timer;
  CurrentTimeBloc() : super(const CurrentTimeState()) {
    on<UpdatedDateTimeEvent>(_onUpdatedTimeEvent);
    _startTimer();
  }

  void _onUpdatedTimeEvent(
    UpdatedDateTimeEvent event,
    Emitter<CurrentTimeState> emit,
  ) async {
    final now = DateTime.now();
    final currentTime = DateFormat('HH:mm:ss').format(now);
    final currentDate = DateFormat('EEE, M-d-y').format(now);
    emit(
      state.copyWith(
        currentTime: currentTime,
        currentDate: currentDate,
      ),
    );
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => add(UpdatedDateTimeEvent()),
    );
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
