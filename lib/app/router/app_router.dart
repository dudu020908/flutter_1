import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/main/main_screen.dart';
import 'package:daelim_2025/presentation/result/result_screen.dart';
import 'package:daelim_2025/presentation/start/start_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: AppRoute.start.toPath,
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      name: AppRoute.start.name,
      builder: (context, state) => StartScreen(),
    ),
    GoRoute(
      path: AppRoute.main.toPath,
      name: AppRoute.main.name,
      builder: (context, state) => MainScreen(),
    ),
    GoRoute(
      path: AppRoute.result.toPath,
      name: AppRoute.result.name,
      builder: (context, state) {
        final bmi = state.uri.queryParameters['bmi'];
        //가져올 값
        return ResultScreen(bmi: double.parse(bmi!));
      },
    ),
  ],
);
