import 'package:evnto/core/constants/app_constants.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/organizers/view/components/organizer_tile.dart';
import 'package:flutter/material.dart';

class OrganizersPage extends StatelessWidget {
  const OrganizersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            32.ph,
            OrganizerTile(
              organizer: AppConstants.orgainzers[0],
              isOrganizer: false,
            ),
            16.ph,
            OrganizerTile(
              organizer: AppConstants.orgainzers[1],
              isOrganizer: false,
            ),
          ],
        ),
      ),
    );
  }
}
