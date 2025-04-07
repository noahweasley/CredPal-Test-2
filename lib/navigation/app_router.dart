import 'package:credpal_test/domain/bloc/home_bloc.dart';
import 'package:credpal_test/navigation/app_route_paths.dart';
import 'package:credpal_test/navigation/app_routes.dart';
import 'package:credpal_test/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialRoute,
    routes: [
      GoRoute(
        name: AppRoutes.home,
        path: AppRoutePaths.home,
        builder: (_, state) => BlocProvider(
          create: (_) => HomeBloc(),
          child: const Home(),
        ),
      ),
    ],
  );

  /// Navigates to a named route using [router.goNamed].
  ///
  /// - [name]: The name of the route.
  /// - [params]: A map of path parameters (default is an empty map).
  /// - [queryParams]: A map of query parameters (default is an empty map).
  /// - [extra]: Additional data to pass to the route.
  static void goNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    router.goNamed(name, pathParameters: params, queryParameters: queryParams, extra: extra);
  }

  /// Navigates to a specified path using [router.go].
  ///
  /// - [path]: The target path.
  static void go(String path) {
    router.go(path);
  }

  /// Pushes a named route onto the navigation stack using [router.pushNamed].
  ///
  /// - [name]: The name of the route.
  /// - [params]: A map of path parameters (default is an empty map).
  /// - [queryParams]: A map of query parameters (default is an empty map).
  /// - [extra]: Additional data to pass to the route.
  static void pushNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    router.pushNamed(name, pathParameters: params, queryParameters: queryParams, extra: extra);
  }

  /// Replaces the current route with a new location using [router.pushReplacement].
  ///
  /// - [location]: The new location to navigate to.
  /// - [extra]: Additional data to pass to the route.
  static void pushReplacement<T extends Object?>(String location, {Object? extra}) {
    router.pushReplacement(location, extra: extra);
  }

  /// Replaces the current route with a named route using [router.pushReplacementNamed].
  ///
  /// - [name]: The name of the new route.
  /// - [pathParameters]: A map of path parameters (default is an empty map).
  /// - [queryParameters]: A map of query parameters (default is an empty map).
  /// - [extra]: Additional data to pass to the route.
  static void pushReplacementNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    router.pushReplacementNamed(name, pathParameters: pathParameters, queryParameters: queryParameters, extra: extra);
  }

  /// Pushes a new route onto the navigation stack using [router.push].
  ///
  /// - [path]: The path of the new route.
  static void push(String path) {
    router.push(path);
  }

  /// Pops the current route off the navigation stack using [router.pop].
  static void pop() {
    router.pop();
  }

  /// Returns the initial route of the application.
  static String get initialRoute {
    return AppRoutePaths.home;
  }
}
