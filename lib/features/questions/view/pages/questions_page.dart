import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/questions_bar.dart';
import '../components/questions_body.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const QuestionsBar(),
              32.ph,
              Text(
                "",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              32.ph,
              QuestionsBody(question: AppDummy.questions[0]),
            ],
          ),
        ),
      ),
    );
  }
}
