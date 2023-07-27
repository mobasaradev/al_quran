import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

part 'current_location_event.dart';
part 'current_location_state.dart';

class CurrentLocationBloc extends Bloc<CurrentLocationEvent, CurrentLocationState> {
  CurrentLocationBloc() : super(const CurrentLocationState()) {
    on<CurrentLocationEvent>(_onCurrentLocationEvent);
  }
  void _onCurrentLocationEvent(
    CurrentLocationEvent event,
    Emitter<CurrentLocationState> emit,
  ) async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        await Geolocator.requestPermission();
      } else {
        Position location = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        String currentLocation =
            "Latitude: ${location.latitude}, Longitude: ${location.longitude}";
        emit(state.copyWith(currentLocation: currentLocation));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
