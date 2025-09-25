import 'package:animy_clean_arc/core/theme/thems.dart';
import 'package:animy_clean_arc/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:animy_clean_arc/features/nav_bar/presentation/view/nav_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NavBarCubit(),
        child: const NavBarView(),
      ),
    );
  }
}
