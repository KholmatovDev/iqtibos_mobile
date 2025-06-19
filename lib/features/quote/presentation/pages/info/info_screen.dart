import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iqtibos_flutter/core/constants/colors.dart';
import 'package:iqtibos_flutter/core/extensions/extensions.dart';
import 'package:iqtibos_flutter/features/quote/presentation/pages/main/main_page.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({
    super.key,
  });

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 10),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MainPage(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              100.ph,
              const Text(
                "Здравствуйте!",
                style: TextStyle(color: AppColors.opacityWhite, fontSize: 30),
              ).animate().fade(
                  duration: const Duration(milliseconds: 770),
                  delay: const Duration(milliseconds: 500)),
              20.ph,
              const Text(
                "Спасибо, что используете это приложение! Надеюсь, оно будет для вас полезнее, чем просмотр коротких видео",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.opacityWhite, fontSize: 20),
              ).animate().fade(
                  duration: const Duration(milliseconds: 1000),
                  delay: const Duration(milliseconds: 2000)),
              const Text(
                "Не забудьте подписаться на канал XRCoder на YouTube!",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.opacityWhite, fontSize: 20),
              ).animate().fade(
                  duration: const Duration(milliseconds: 2000),
                  delay: const Duration(milliseconds: 4000)),
              20.ph,
              const Text(
                "Желаю вам хорошего настроения!",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.opacityWhite, fontSize: 30),
              ).animate().fade(
                  duration: const Duration(milliseconds: 2000),
                  delay: const Duration(milliseconds: 5000)),
              200.ph,
              TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainPage(),
                            ));
                      },
                      child: const Text("Начать",
                          style: TextStyle(
                              color: AppColors.opacityWhite, fontSize: 20)))
                  .animate()
                  .fade(delay: const Duration(seconds: 5)),
              10.ph,
            ],
          ),
        ),
      );
}
