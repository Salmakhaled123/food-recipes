import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class CustomPopUpMenuButton extends StatelessWidget {
  const CustomPopUpMenuButton({super.key,

    this.onSelected});
  final void Function(String)? onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.language_outlined),
        onSelected: onSelected,
        itemBuilder: (context) =>
        [
          PopupMenuItem(
              value: 'Arabic'.tr(), child: Text('Arabic'.tr())),
          PopupMenuItem(
            value: 'English'.tr(), child: Text('English'.tr(),),)
        ]);
  }
}
