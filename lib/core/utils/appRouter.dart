import 'package:bookapp_cleanarch/features/home/presentation/view/screen/deatils.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/screen/home.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/screen/search.dart';
import 'package:bookapp_cleanarch/features/splash/presentation/view/screen/SplashScreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHome = '/home';
  static const kHomeDealtils = '/homeDeatils';
  static const kSearch = '/search';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: kHome,
      builder: (context, state) {
        return const Home();
      },
    ),
    GoRoute(
      path: kHomeDealtils,
      builder: (context, state) {
        return const Deatils();
      },
    ),
    GoRoute(
      path: kSearch,
      builder: (context, state) {
        return const Search();
      },
    ),
  ]);
}
