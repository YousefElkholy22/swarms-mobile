import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../../../core/styles/app_fonts.dart';
import 'filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/widgets/bottom_sheet_divider.dart';
import '../../../../core/widgets/public_button.dart';

class FiltersBottomSheet extends StatelessWidget {
  const FiltersBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.8.sh,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BottomSheetDivder(),
                  16.ph,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Filters', style: AppFonts.black20Bold),
                       80.pw,
                        TextButton(
                          onPressed: () {
                            // Reset action
                          },
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                  ),
                  16.ph,
                  const Filters(
                    title: 'Categories',
                    options: ['WorkShop', 'Lectures', 'Seminar', 'Technology', 'Study Group', 'Bootcamp'],
                  ),
                  16.ph,
                  const Filters(
                    title: 'Event Type',
                    options: ['Free', 'Paid'],
                  ),
                  16.ph,
                  const Filters(
                    title: 'Date',
                    options: ['Today', 'Tomorrow', 'This Week'],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.lightGrey,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: PublicButton(
              title: "Show Results",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}

