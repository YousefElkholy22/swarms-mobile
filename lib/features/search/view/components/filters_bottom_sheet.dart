import 'package:flutter/material.dart';

class FiltersBottomSheet extends StatelessWidget {
  const FiltersBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          thickness: 2,
          indent: 150,
          endIndent: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filters',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // Reset action
                },
                child: Text('Reset'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Wrap(
            spacing: 8.0,
            children: [
              FilterChip(
                label: Text('Option 1'),
                selected: false,
                onSelected: (bool selected) {
                  // Handle chip selection
                },
              ),
              FilterChip(
                label: Text('Option 2'),
                selected: false,
                onSelected: (bool selected) {
                  // Handle chip selection
                },
              ),
              FilterChip(
                label: Text('Option 3'),
                selected: false,
                onSelected: (bool selected) {
                  // Handle chip selection
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // Confirm action
            },
            child: Text('Confirm'),
          ),
        ),
      ],
    );
  }
}