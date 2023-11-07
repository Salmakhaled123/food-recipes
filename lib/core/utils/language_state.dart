part of 'language_cubit.dart';

@immutable
abstract class LanguageState {}

class LanguageInitial extends LanguageState {}
class ChangedToArabicLanguage extends LanguageState{}
class ChangedToEnglishLanguage extends LanguageState{}
