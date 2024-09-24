import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/components/input_form.dart';
import 'package:evnto/features/authentcation/view/components/main_button.dart';
import 'package:evnto/features/profile/components/edit_profile_cards.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = "Reem Magdy";
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
            "Edit Profile",
            style: AppFonts.black20Bold,
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                          radius: context.width * 0.1543,
                          child: Image.asset("assets/images/profile_girl.png")),
                      Container(
                        width: context.width * 0.11,
                        height: context.height * 0.06,
                        decoration: BoxDecoration(
                            color: AppColors.purple,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: AppColors.white, width: 2.5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              color: AppColors.white,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  InputForm(
                      controller: nameController,
                      validate: (String value) {},
                      hint: "Name",
                      type: TextInputType.name,
                      width: double.infinity,
                      isPassword: false),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  EditProfileCards(
                      title: "Computer & Information science", fun: () {}),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  EditProfileCards(title: "Workshop", fun: () {}),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  EditProfileCards(title: "Public Speaking", fun: () {}),
                  SizedBox(
                    height: context.height * 0.2,
                  ),
                  MainButton(
                      onpressd: () {},
                      background: AppColors.grey,
                      text: "Update")
                ],
              ),
            ),
          ),
        ));
  }
}
