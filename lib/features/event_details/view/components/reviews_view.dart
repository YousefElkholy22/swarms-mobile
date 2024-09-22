import 'package:evnto/core/constants/app_dummy.dart';
import 'package:flutter/material.dart';

import 'review_card.dart';



class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: AppDummy.reviews.length,
        itemBuilder: (context, index) {
          final review = AppDummy.reviews[index];
          return ReviewCard(review: review);
        },
      ),
    );
  }
}
