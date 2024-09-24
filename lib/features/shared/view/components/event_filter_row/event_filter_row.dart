import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/app_colors.dart';
import 'toggle_card.dart';

class EventFilterRow extends StatefulWidget {
  const EventFilterRow({super.key});

  @override
  State<EventFilterRow> createState() => _EventFilterRowState();
}

class _EventFilterRowState extends State<EventFilterRow> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 60.h,
        width: 380.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
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
          children: List.generate(
            2,
            (index) {
              bool isSelected = index == selectedIndex;
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: ToggleCard(
                    index: index,
                    isSelected: isSelected,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
