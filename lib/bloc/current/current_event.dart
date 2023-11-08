sealed class CurrentEvent {}

class FetchCurrentEvent implements CurrentEvent{
  final String location;

  FetchCurrentEvent({required this.location});
}
