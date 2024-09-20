import 'package:evnto/features/questions/view/components/option_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MultipleOptionsGridView extends StatelessWidget {
  const MultipleOptionsGridView({
    super.key,
    required this.options,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: options.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 164 / 116,
        mainAxisSpacing: 20.h,
        crossAxisSpacing: 60.w,
      ),
      itemBuilder: (_, index) {
        return OptionCard(
          option: options[index],
          index: index,
        );
      },
    );
  }
}
