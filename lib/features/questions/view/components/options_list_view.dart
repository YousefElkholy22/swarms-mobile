import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';

import 'option_card.dart';

class OptionListView extends StatelessWidget {
  const OptionListView({
    super.key,
    required this.options,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: options.length,
      separatorBuilder: (_, __) => 20.ph,
      itemBuilder: (context, index) {
        return OptionCard(option: options[index]);
      },
    );
  }
}


