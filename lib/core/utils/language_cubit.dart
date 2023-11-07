import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
  Future changeLanguageToArabic(BuildContext context) async
  {
    await context.setLocale(const Locale('ar'));
    emit(ChangedToArabicLanguage());
  }

  Future changeLanguageToEnglish(BuildContext context) async
  {
    await context.setLocale(const Locale('en'));
    emit(ChangedToEnglishLanguage());
  }
}
