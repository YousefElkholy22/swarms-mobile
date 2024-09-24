import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/widgets/public_text_form_field.dart';
import 'package:evnto/features/search/bloc/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/styles/app_colors.dart';
import 'filters_bottom_sheet.dart';

class SearchFilterRow extends StatefulWidget {
  const SearchFilterRow({
    super.key,
  });

  @override
  State<SearchFilterRow> createState() => _SearchFilterRowState();
}

class _SearchFilterRowState extends State<SearchFilterRow> {
  late TextEditingController searchController;
  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: PublicTextFormField(
              hint: S.current.search,
              showprefixIcon: true,
              prefixIcon: Iconsax.search_normal,
              controller: searchController,
              borderRadius: 16.r,
              onChanged: (value) {
                final bloc = context.read<SearchCubit>();
                bloc.search(value);
              },
            ),
          ),
          16.pw,
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const FiltersBottomSheet();
                },
              );
            },
            child: Container(
              height: 60.r,
              width: 60.r,
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
              ),
              child: Center(
                child: Icon(
                  HugeIcons.strokeRoundedFilterHorizontal,
                  size: 24.r,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
