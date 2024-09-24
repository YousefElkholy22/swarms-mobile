import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/shared/view/components/event_list_tile/shared_event_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../shared/view/components/event_filter_row/event_filter_row.dart';
import '../../data/organizer_entity.dart';

class OrgainzerEventsPage extends StatelessWidget {
  final OrganizerEntity organizer;

  const OrgainzerEventsPage({super.key, required this.organizer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(organizer.name, style: AppFonts.black24SemiBold),
      ),
      body: SafeArea(
        child: Column(
          children: [
            20.ph,
            const EventFilterRow(),
            20.ph,
            Expanded(
              child: ListView.builder(
                itemCount: organizer.events.length,
                itemBuilder: (_, index) {
                  final event = organizer.events[index];
                  return SharedEventListTile(event: event);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
