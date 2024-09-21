import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  SizedBox get ph => SizedBox(height: toDouble().h);
  SizedBox get pw => SizedBox(width: toDouble().w);

  SliverToBoxAdapter get svph => SliverToBoxAdapter(child: SizedBox(height: toDouble().h));
  SliverToBoxAdapter get svpw => SliverToBoxAdapter(child: SizedBox(width: toDouble().w));
}
