import 'package:evnto/core/constants/app_dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/app_fonts.dart';
import '../components/message_input.dart';
import '../components/message_line.dart';

class ChatpotPage extends StatelessWidget {
  const ChatpotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatpot', style: AppFonts.black24SemiBold),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: AppDummy.messages.length,
                itemBuilder: (_, index) {
                  return MessageLine(message: AppDummy.messages[index]);
                },
              ),
            ),
            const MessageInput(),
          ],
        ),
      ),
    );
  }
}
