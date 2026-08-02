import 'package:bookly_app/core/constants/app_strings.dart';
import 'package:bookly_app/features/home/view/details_view.dart';
import 'package:bookly_app/features/home/view/home_view.dart';
import 'package:bookly_app/features/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
static  final routers = GoRouter(
  routes: [
    GoRoute(
      path: AppStrings.splashView,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: AppStrings.homeView,
      builder: (context, state) =>HomeView(),
    ),
    GoRoute(
      path: AppStrings.detailsView,
      builder: (context, state) =>DetailsView(),
    ),
  ],
);
}