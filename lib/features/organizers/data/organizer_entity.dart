import 'package:evnto/features/shared/data/shared_event_entity.dart';

class OrganizerEntity {
  final String id;
  final String name;
  final String image;
  final List<EventEntity> events;

  OrganizerEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.events,
  });
}

