import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/core/helpers/extensions/datetime_extensions.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/features/chatpot/data/message_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_fonts.dart';

class MessageLine extends StatelessWidget {
  final MessageEntity message;
  const MessageLine({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: message.isBot? MainAxisAlignment.start: MainAxisAlignment.end,
        children: [
          if (message.isBot)
            CircleAvatar(
              backgroundColor: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child:
                    Image.asset(Assets.imagesChatpot, height: 26.h, width: 26.h),
              ),
            ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 0.6.sw,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: message.isBot ? AppColors.white : AppColors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16.w),
                bottomLeft: Radius.circular(16.w),
                topRight: Radius.circular(message.isBot ? 16.w : 0),
                topLeft: Radius.circular(message.isBot ? 0 : 16.w),
              ),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.lightGrey,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: message.isBot? CrossAxisAlignment.start: CrossAxisAlignment.end,
              children: [
                Text(
                  message.text,
                  maxLines: 4,
                  
                  style: message.isBot
                      ? AppFonts.black16Normal
                      : AppFonts.white16Normal,
                ),
                2.ph,
                Text(
                  message.time.hourMinute12Format,
                  style: message.isBot
                      ? AppFonts.black12Normal
                      : AppFonts.white12Normal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
