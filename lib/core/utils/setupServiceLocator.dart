import 'package:bookapp_cleanarch/core/utils/dioHelper.dart';
import 'package:bookapp_cleanarch/features/home/data/dataSource/local/local.dart';
import 'package:bookapp_cleanarch/features/home/data/dataSource/remote/remote.dart';
import 'package:bookapp_cleanarch/features/home/data/repos/home_repo_impl.dart';

class DIjection {
  static void setupServiceLocator(getIt) {
    getIt.registerSingleton<HomeReposImplement>(HomeReposImplement(
        homeRemoteDataSource: HomeRemoteDataSourceImplement(
          DIoHelper(),
        ),
        homeLocalDataSource: HomeLocalDataSourceImplement()));
  }
}
