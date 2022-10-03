import 'package:bingwa_clone/utils/colors.dart';
import 'package:bingwa_clone/utils/dimensions.dart';
import 'package:bingwa_clone/widgets/appIcon.dart';
import 'package:bingwa_clone/widgets/smallTxt.dart';

import 'package:flutter/material.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    backgroundColor: AppColors.mainColor,
    elevation: 0,
    title: Center(
      child: SmallText(
        text: "World of Bingwa",
        color: Colors.grey.shade800,
        size: 25,
      ),
    ),
    actions: [
      CircleAvatar(
        radius: Dimensions.radius15,
        child: AppIcon(
          icon: Icons.share_sharp,
          bgColor: AppColors.mainColor,
          iconColor: Colors.grey.shade600,
          iconSize: Dimensions.height20,
        ),
      ),
    ],
    leading: AppIcon(
      icon: Icons.menu_sharp,
      iconColor: Colors.grey.shade600,
      bgColor: AppColors.mainColor,
    ),
  );
}
