import 'package:flutter/material.dart';

extension SliverExtensions on Widget {
  SliverToBoxAdapter toSliver() {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}