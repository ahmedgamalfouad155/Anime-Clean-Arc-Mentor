import 'package:animy_clean_arc/features/home/presentation/view/home_view.dart';
import 'package:animy_clean_arc/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:animy_clean_arc/features/nav_bar/presentation/view/widgets/custom_buttom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  final List<Widget> pages = const [
    HomeView(),
    Center(child: Text("Explore Page")),
    Center(child: Text("Search Page")),
    Center(child: Text("World Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: CustomBottomNavBar(
            items: [
              NavBarItem(icon: Icons.home_outlined, label: "Home"),
              NavBarItem(icon: Icons.bar_chart_outlined, label: "Stats"),
              NavBarItem(icon: Icons.search, label: "Search"),
              NavBarItem(icon: Icons.public, label: "World"),
              NavBarItem(icon: Icons.person, label: "Profile"),
            ],
            onTabSelected: (index) {},
          ),
        );
      },
    );
  }
}
