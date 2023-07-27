part of 'current_location_bloc.dart';

enum Status { initial, error }
class CurrentLocationState extends Equatable {
  const CurrentLocationState({this.status = Status.initial, this.currentLocation = 'Location'});
  
  final Status status;
  final String currentLocation;

  @override
  List<Object> get props => [status, currentLocation];

  CurrentLocationState copyWith({
    Status? status,
    String? currentLocation,
  }) {
    return CurrentLocationState(
      status: status ?? this.status,
      currentLocation: currentLocation ?? this.currentLocation,
    );
  }
}


