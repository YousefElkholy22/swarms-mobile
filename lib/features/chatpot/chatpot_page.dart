import 'package:flutter/material.dart';

import '../../../core/styles/app_fonts.dart';

class ChatpotPage extends StatelessWidget {
  const ChatpotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chatpot',
          style: AppFonts.black24SemiBold,
        ),
      ),
      body: Center(
        child: Text(
          'Chatpot Soon...',
          style: AppFonts.blue20Bold,
        ),
      ),
    );
  }
}
