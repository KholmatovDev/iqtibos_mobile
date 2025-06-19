import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iqtibos_flutter/core/constants/colors.dart';
import 'package:iqtibos_flutter/features/quote/presentation/pages/info/info_screen.dart';
import 'package:iqtibos_flutter/features/quote/presentation/pages/main/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    _nextPageAction();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "iqtibos",
              style: TextStyle(
                color: AppColors.opacityWhite,
                fontSize: 35,
              ),
            )
                .animate()
                .fade(duration: 1000.ms)
                .fade(delay: 2500.ms, begin: 1, end: 0),
            const Text(
              "Powered by xrcoder.uz",
              style: TextStyle(
                color: AppColors.opacityWhite,
                fontSize: 15,
              ),
            )
                .animate()
                .fade(duration: 2000.ms)
                .fade(delay: 2500.ms, begin: 1, end: 0),
          ],
        ),
      ),
    );
  }

  _nextPageAction() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Timer(
      3000.ms,
      () {
        if (prefs.getBool("isFirst") ?? true) {
          prefs.setBool("isFirst", false);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const InfoScreen()));
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MainPage()));
        }
      },
    );
  }
}
