import 'package:ecommerce_landing_page/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  /*<<----------->> variables <<----------->>*/
  late AnimationController _entryAnimationController;
  late Animation _entryAnimation;

  late AnimationController _sliderAnimationController;
  late Animation _sliderAnimation;

  /*<<----------->> methods <<----------->>*/
  void entryAnimationControllerInit() {
    _entryAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );

    _entryAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _entryAnimationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  void sliderAnimationControllerInit() {
    _sliderAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    _sliderAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _sliderAnimationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  void initAnimation() {
    Future.delayed(
      const Duration(seconds: 02),
      () async {
        _entryAnimationController.forward();
      },
    );
  }

  void setSystemUi() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void initState() {
    setSystemUi();
    entryAnimationControllerInit();
    sliderAnimationControllerInit();
    initAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _entryAnimationController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  /*<<----------->> builder <<----------->>*/
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;

    return Scaffold(
      /*<<----------->> animation builder <<----------->>*/
      body: AnimatedBuilder(
        animation: _entryAnimation,
        builder: (context, child) {
          /*<<----------->> animate to top <<----------->>*/
          return Transform.translate(
            offset: Offset(
              0.0,
              100.h * (1 - _entryAnimation.value),
            ),
            /*<<----------->> opacity animation <<----------->>*/
            child: Opacity(
              opacity: _entryAnimation.value,
              /*<<----------->> body items <<----------->>*/
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /*<<----------->> slider items <<----------->>*/
                          for (int i = 0; i < 3; i++)
                            Transform.scale(
                              scale: 3.5,
                              child: AnimatedBuilder(
                                animation: _sliderAnimation,
                                builder: (context, child) {
                                  return Transform.translate(
                                    offset: Offset(
                                      i == 1
                                          ? (-25.h +
                                              (100.h * _sliderAnimation.value))
                                          : -100.h * _sliderAnimation.value,
                                      0,
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 40.h),
                                      child: Opacity(
                                        opacity: 1.0 - _sliderAnimation.value,
                                        child: Text(
                                          "EMARKET",
                                          style: TextStyle(
                                            fontSize: 50,
                                            color: theme.colorScheme.onSurface
                                                .withOpacity(0.15),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.background,
                              offset: const Offset(0, 0),
                              blurRadius: 300,
                              spreadRadius: 20,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 100.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.background,
                              offset: const Offset(0, 0),
                              blurRadius: 300,
                              spreadRadius: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SafeArea(
                    child: AnimatedBuilder(
                      animation: _sliderAnimation,
                      builder: (context, child) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Opacity(
                              opacity: 1.0 - _sliderAnimation.value,
                              child: const Column(
                                children: [
                                  Text(
                                    "EMARKET",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Clothing Store App",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
