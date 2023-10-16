import 'package:bookapp_cleanarch/core/style/theme/theme.dart';
import 'package:bookapp_cleanarch/core/utils/appRouter.dart';
import 'package:bookapp_cleanarch/core/utils/bloc_observel.dart';
import 'package:bookapp_cleanarch/core/utils/cacheHelper.dart';
import 'package:bookapp_cleanarch/core/utils/dioHelper.dart';
import 'package:bookapp_cleanarch/core/utils/setupServiceLocator.dart';
import 'package:bookapp_cleanarch/features/home/data/dataSource/local/local.dart';
import 'package:bookapp_cleanarch/features/home/data/dataSource/remote/remote.dart';
import 'package:bookapp_cleanarch/features/home/data/repos/home_repo_impl.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/featchFeatueredBooksUseCase.dart';
import 'package:bookapp_cleanarch/features/home/domin/useCases/featchNewsBooksUseCase.dart';
import 'package:bookapp_cleanarch/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DIoHelper.init();
  CacheHelper.init();
  DIjection.setupServiceLocator(getIt);
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

final getIt = GetIt.instance;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        featuredBooks: FetchFeaturedBooks(getIt.get<HomeReposImplement>()),
        newBooks: FetchNewsBooks(getIt.get<HomeReposImplement>()),
      )
        ..fetchFeatueBooks()
        ..fetchNewBooks(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: defaultTheme,
            routerConfig: AppRouter.router,
            // home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
