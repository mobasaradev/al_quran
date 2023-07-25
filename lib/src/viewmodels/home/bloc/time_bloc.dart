import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/src/viewmodels/home/bloc/time_event.dart';
import 'package:quran/src/viewmodels/home/bloc/time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  late Timer _timer;

  TimeBloc() : super(TimeState(DateTime.now())) {
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        add(UpdateTimeEvent());
      },
    );
  }

  Stream<TimeState> mapEventToState(TimeEvent event) async* {
    if (event is UpdateTimeEvent) {
      yield TimeState(DateTime.now());
    }
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
