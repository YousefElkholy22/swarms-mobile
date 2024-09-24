import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';

class Filters extends StatefulWidget {
  final String title;
  final List<String> options;
  const Filters({super.key, required this.title, required this.options});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: AppFonts.black18SemiBold),
          12.ph,
          Wrap(
            spacing: 8.0,
            children: widget.options.map(
              (option) {
                final isOptionSelected = isSelected(option);
                return ChoiceChip(
                  backgroundColor: const Color.fromARGB(255, 243, 242, 247),
                  selectedColor: AppColors.blue,
                  selected: isOptionSelected,
                  showCheckmark: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(44.r),
                    side: const BorderSide(
                      width: 0,
                      color: Color.fromARGB(255, 243, 242, 247),
                    ),
                  ),
                  label: Text(
                    option,
                    style: AppFonts.black16Normal.copyWith(
                      color:
                          isOptionSelected ? AppColors.white : AppColors.darkGrey,
                    ),
                  ),
                  onSelected: (_) {
                    _onSelected(option);
                  },
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }

  void _onSelected(String option) {
    if (selectedOptions.contains(option)) {
      selectedOptions.remove(option);
    } else {
      selectedOptions.add(option);
    }
    setState(() {});
  }

  bool isSelected(String option) {
    return selectedOptions.contains(option);
  }
}
