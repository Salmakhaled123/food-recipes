import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodrecipes/core/utils/language_cubit.dart';
import 'package:foodrecipes/features/home/presentation/view/widgets/custom_popup_menu_button.dart';
import 'package:foodrecipes/features/home/presentation/view/widgets/home_title.dart';
import 'package:foodrecipes/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        var cubit=BlocProvider.of<LanguageCubit>(context);
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              centerTitle: true,
              automaticallyImplyLeading: false,
              actions: [
                CustomPopUpMenuButton(onSelected:(val) async
                {
                await changeLanguage(val, cubit, context);
                }),

              ],
              title: const HomeTitle()),
          body: const HomeViewBody(),
        );
      },
    );
  }

  Future<void> changeLanguage(String val, LanguageCubit cubit, BuildContext context) async {
    if (val == 'Arabic' || val == 'لغه عربيه') {
    await cubit.changeLanguageToArabic(context);
    }
    else if (val == 'English' || val == 'لغه انجليزيه') {
    await cubit.changeLanguageToEnglish(context);
    }
  }
}





