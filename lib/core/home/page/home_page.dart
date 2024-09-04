import 'package:ecommerce_landing_page/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  /*<<----------->> variables <<----------->>*/
  late AnimationController _entryAnimationController;
  late Animation _entryAnimation;

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

  void initAnimation() {
    Future.delayed(
      const Duration(seconds: 02),
      () async {
        _entryAnimationController.forward();
      },
    );
  }

  @override
  void initState() {
    entryAnimationControllerInit();
    initAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _entryAnimationController.dispose();
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
                  Text(
                    "Monirul Islam",
                    style: theme.textTheme.displayLarge,
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
