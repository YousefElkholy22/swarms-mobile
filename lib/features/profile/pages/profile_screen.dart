import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/profile/components/profile_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context);
            },
            icon: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.black,
                  )),
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              ),
            )),
        title: Text(
          "Profile",
          style: AppFonts.black20Bold,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                  radius: context.width * 0.1543,
                  child: Image.asset("assets/images/profile_girl.png")),
              SizedBox(
                height: context.height * 0.02,
              ),
              Text(
                "Reem Magdi",
                style: AppFonts.black18SemiBold,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              Container(
                width: context.width * 0.5,
                height: context.height * 0.04,
                decoration: BoxDecoration(
                    color: AppColors.opacityPurple,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "reemmagdy717@gmail.com",
                    style: AppFonts.black14Normal
                        .copyWith(color: AppColors.purple),
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ProfileItemCard(
                icon: Icons.edit,
                title: "Edit Profile",
                isPage: true,
                fun: () {},
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ProfileItemCard(
                icon: Icons.headset_mic_outlined,
                title: "Contact Us",
                isPage: true,
                fun: () {},
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ProfileItemCard(
                icon: CupertinoIcons.exclamationmark_circle,
                title: "About Us",
                isPage: true,
                fun: () {},
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ProfileItemCard(
                icon: Icons.logout,
                title: "Logout",
                isPage: false,
                fun: () {},
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
