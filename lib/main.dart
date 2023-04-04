import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmine_app/logic/cubit/bottom_nav_bar_cubit.dart';
import 'package:pharmine_app/presentaton/router/app_router.dart';
import 'package:pharmine_app/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavBarCubit>(
      create: (context) => BottomNavBarCubit(),
      child: MaterialApp(
        title: 'Pharmine',
        theme: MyTheme.lightTheme,
        onGenerateRoute: appRouter.onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
