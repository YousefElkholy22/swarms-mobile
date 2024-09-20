import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';

class LinearPrecentProgress extends StatefulWidget {
  /// The progress must be between 0 and 1.
  final double progress;
  final double? width;
  const LinearPrecentProgress({
    super.key,
    required this.progress,
    this.width,
  });

  @override
  State<LinearPrecentProgress> createState() => _LinearPrecentProgressState();
}

class _LinearPrecentProgressState extends State<LinearPrecentProgress> {
  late final double _thick;
  late final double _totalWidth;

  @override
  void initState() {
    super.initState();
    _thick = 6.h;
    _totalWidth = widget.width ?? 1.sw - 32.w;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: _thick * 2,
          width: _totalWidth,
        ),
        Container(
          height: _thick * 0.5,
          width: _totalWidth,
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
            width: _totalWidth * widget.progress,
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
