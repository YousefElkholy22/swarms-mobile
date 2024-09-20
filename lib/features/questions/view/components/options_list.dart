import 'package:flutter/material.dart';

import 'multiple_options_grid_view.dart';
import 'options_list_view.dart';

class OptionsList extends StatelessWidget {
  final bool isMultiple;
  final List<String> options;
  const OptionsList({
    super.key,
    required this.isMultiple,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    if(isMultiple){
      return OptionListView(options: options);
    } else {
      return MultipleOptionsGridView(options: options);
    }
  }
}


