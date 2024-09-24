import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/organizers/view/components/organizer_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/orgainzers_list_state.dart';

class OrgainzersListPage extends StatelessWidget {
  final OrgainzersListState state;

  const OrgainzersListPage({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(state.name, style: AppFonts.black24SemiBold),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: state.organizers.length,
          itemBuilder: (_, index) {
            final organizer = state.organizers[index];
            return OrganizerTile(organizer: organizer);
          },
        ),
      ),
    );
  }
}
