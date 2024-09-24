import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/features/organizers/data/orgainzers_list_state.dart';

import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_fonts.dart';
import '../../data/organizer_entity.dart';

class OrganizerTile extends StatelessWidget {
  final OrganizerEntity organizer;
  final bool isOrganizer;
  const OrganizerTile({
    super.key,
    required this.organizer,
    this.isOrganizer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: InkWell(
        onTap: () {
          _onTap(context);
        },
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightGrey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      organizer.image,
                      width: 64.w,
                      height: 64.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  12.pw,
                  Expanded(
                    child: Text(
                      organizer.name,
                      maxLines: 2,
                      style: AppFonts.black18SemiBold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.black,
                    size: 24.sp,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Container(
                // TO make the curve suitable with the shadow of the container
                margin: EdgeInsets.symmetric(vertical: 2.h),
                width: 6.w,
                decoration: BoxDecoration(
                  color: AppColors.darkGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    bottomLeft: Radius.circular(16.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    if (isOrganizer) {
      Navigator.pushNamed(
        context,
        AppRoutes.organizerEvents,
        arguments: organizer,
      );
    } else {
      var state = OrgainzersListState(
        name: organizer.name,
        organizers: organizer.id == "1" ? AppDummy.teams : AppDummy.mentors,
      );
      Navigator.pushNamed(
        context,
        AppRoutes.organizersList,
        arguments: state,
      );
    }
  }
}
