import 'package:evnto/features/organizers/data/organizer_entity.dart';

class OrgainzersListState {
  final String name;
  final List<OrganizerEntity> organizers;

  OrgainzersListState({
    required this.organizers,
    required this.name,
  });
}
