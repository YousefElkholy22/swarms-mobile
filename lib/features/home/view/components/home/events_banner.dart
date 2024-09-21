
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../../core/constants/app_dummy.dart';
import 'banner_card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsBanner extends StatelessWidget {
  const EventsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 210.h,
        child: CarouselSlider(
          items: AppDummy.eventsBanner
              .map((event) => BannerCard(event: event))
              .toList(),
          options: CarouselOptions(
            height: 210.h,
            aspectRatio: 16 / 9,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.22,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
