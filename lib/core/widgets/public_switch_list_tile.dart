import '../constants/app_constants.dart';
import '../styles/app_fonts.dart';
import '../styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helpers/cache/app_prefs.dart';
import '../service_locator/service_locator.dart';


enum Switchers {
  darkMode,
  faceId,
  rememberMe,
  touchId,
}

class PublicSwitchListTile extends StatefulWidget {
  final String title;
  final Switchers swithcer;
  final Icon? icon;
  const PublicSwitchListTile({
    super.key,
    required this.title,
    required this.swithcer,
    this.icon,
  });

  @override
  State<PublicSwitchListTile> createState() => _PublicSwitchListTileState();
}

class _PublicSwitchListTileState extends State<PublicSwitchListTile> {
  bool switcherValue = false;
  final appPrefs = getIt<AppPrefs>();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.icon,
      title: Text(
         widget.title,
        style: AppFonts.black16Normal,
      ),
      trailing: Transform.scale(
        scale: 0.7,
        child: CupertinoSwitch(
          onChanged: (value) {
            setState(() {
              switcherValue = value;
            });
            setSwitches(widget.swithcer, switcherValue);
          },
          value: switcherValue,
          activeColor: AppColors.blue,
        ),
      ),
    );
  }

  // helper methods
  void setSwitches(Switchers switcher, bool value) {
    switch (switcher) {
      case Switchers.rememberMe:
        appPrefs.setBool(PrefsKeys.userLoggedIn, true);
        break;
      default:
    }
  }
}