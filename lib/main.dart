import 'package:bookly_app/core/Routes/app_routes.dart';
import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imple.dart';
import 'package:bookly_app/features/home/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await dotenv.load();
  configureDependencies();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeatureBooksCubit(getIt.get<HomeRepoImple>())..fetchFeatureBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBookCubit(getIt.get<HomeRepoImple>());
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.routers,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
          scaffoldBackgroundColor: AppColors.backGroundColorApp,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
