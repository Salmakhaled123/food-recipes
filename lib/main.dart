import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodrecipes/core/utils/app_router.dart';
import 'package:foodrecipes/core/utils/bloc_observer.dart';
import 'package:foodrecipes/core/utils/language_cubit.dart';
import 'package:foodrecipes/features/home/data/repos/home_repo_imp.dart';
import 'package:foodrecipes/features/home/presentation/view_model/home_cubit.dart';
import 'package:foodrecipes/features/recipe_details/data/repos/recipe_details_repo_imp.dart';
import 'package:foodrecipes/features/recipe_details/presentation/view_model/recipe_details_cubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(supportedLocales: const [
    Locale('en'),
    Locale('ar')
  ],
      path: 'assets/translation',
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      startLocale: const Locale('en'),
      child: const RecipeApp()));
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>LanguageCubit()),
      BlocProvider(create: (context)=>RecipeDetailsCubit(getIt.get<RecipeDetailsRepoImp>())),
      BlocProvider(create: (context)=>HomeCubit(getIt.get<HomeRepoImp>())..fetchEgyptianFood())
    ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Recipe App',
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              theme: ThemeData(textTheme: GoogleFonts.oswaldTextTheme(),
              ),
              routerConfig: AppRouter.router,
            );
          },

        ),
    );
  }
}
