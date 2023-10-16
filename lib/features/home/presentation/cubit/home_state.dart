part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

final class HomeInitial extends HomeState {}

/*

  **Featured books List

 */
final class HomeFeaturedBooksLoading extends HomeState {}

final class HomeFeaturedBooksFailure extends HomeState {
  final String errorMsg;

  HomeFeaturedBooksFailure({required this.errorMsg});
}

final class HomeFeaturedBooksSuccess extends HomeState {
  final List<BookEntity> books;

  HomeFeaturedBooksSuccess({required this.books});
}

/*

  **new books List

 */
final class HomeNewsBooksLoading extends HomeState {}

final class HomeNewsBooksFailure extends HomeState {
  final String errorMsg;

  HomeNewsBooksFailure({required this.errorMsg});
}

final class HomeNewsBooksSuccess extends HomeState {
  final List<BookEntity> books;

  HomeNewsBooksSuccess({required this.books});
}
