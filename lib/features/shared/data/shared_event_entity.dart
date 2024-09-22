enum EventType{free, paid}

class EventEntity {
  final String id;
  final String name;
  final String description;
  final DateTime date;
  final String location;
  final String image;
  final EventType type;

  EventEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.date,
    required this.location,
    required this.image,
    required this.type,
  });
}
