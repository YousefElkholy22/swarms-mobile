import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';


class LinearPrecentProgress extends StatefulWidget {
  /// The progress must be between 0 and 1.
  final double progress;
  const LinearPrecentProgress({
    super.key,
    required this.progress,
  });

  @override
  State<LinearPrecentProgress> createState() => _LinearPrecentProgressState();
}

class _LinearPrecentProgressState extends State<LinearPrecentProgress> {
  final _thick = 6.h;
  final _totoalWidth = 1.sw - 32.w;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: _thick * 2,
          width: _totoalWidth,
        ),
        Container(
          height: _thick * 0.5,
          width: _totoalWidth,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          left: 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _thick,
            width: _totoalWidth * widget.progress,
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
      ],
    );
  }
}