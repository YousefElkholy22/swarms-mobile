import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/organizers/view/pages/organizers_page.dart';
import 'package:evnto/features/search/bloc/search_cubit.dart';
import 'package:evnto/features/search/bloc/search_state.dart';
import 'package:evnto/features/search/view/components/search_filter_row.dart';
import 'package:evnto/features/search/view/components/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/styles/app_fonts.dart';
import '../components/empty_search_view.dart';
import '../components/no_search_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: AppFonts.black24SemiBold,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SearchFilterRow(),
            20.ph,
            Expanded(
              child: _getView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getView() {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.maybeWhen(
          search: (query) {
            if (query.isEmpty) {
              return const EmptySearchView();
            } else if (query.length < 3) {
              return const NoSearchView();
            } else {
              return const SearchView();
            }
          },
          orElse: () => const EmptySearchView(),
        );
      },
    );
  }
}
