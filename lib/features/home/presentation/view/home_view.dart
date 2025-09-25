import 'package:animy_clean_arc/core/constants/images.dart';
import 'package:animy_clean_arc/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 176, 166, 225),
                  Color(0xFFD3D6FF),
                  Color.fromARGB(255, 224, 222, 237),
                  Color.fromARGB(255, 250, 250, 252),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.3, 0.6, 1.0],
              ),
            ),
          ),

          Positioned(
            right: 0,
            child: Image.asset(
              AppImages.star1,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
          ),

          HomeViewBody(),
        ],
      ),
    );
  }
}
