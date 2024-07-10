import 'package:booklly_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklly_app/core/utils/app_router.dart';

import 'package:booklly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin  used to handle rate with change of values
  // use AnimationController to control the animation but it give me value from 0 to 1 so if we want to change value that AnimationController give to me we need to put thing above AnimationController take value of AnimationController وتطلعهالك بقيم تقدر تستخدمها فعلشان نعمل كدا هننشئ الانميشن الي هنحطة فوق الAnimationController
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

// Always controller will make dispose to it
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.fade, duration: kTransitionDuration);
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}
