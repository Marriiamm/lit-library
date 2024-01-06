//import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> splashAnimation;

  @override
  void initState() {
    super.initState();
    initSplashAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage('assets/images/splashBackground.png'), fit: BoxFit.cover
            ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 160,),
          AnimatedBuilder(
              animation: splashAnimation,
              builder: (contect, _) {
                return SlideTransition(
                  position: splashAnimation,
                  child: Image.asset(
                    'assets/images/splashImage.png',
                    
                  ),
                );
              }),
          const SizedBox(
            height: 15,
          ),
          Directionality(
              textDirection: TextDirection.ltr,
              child: SplashTextAnimation(splashAnimation: splashAnimation))
        ],
      ),
    );
  }

  void initSplashAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    splashAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}

class SplashTextAnimation extends StatelessWidget {
  const SplashTextAnimation({
    super.key,
    required this.splashAnimation,
  });

  final Animation<Offset> splashAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: splashAnimation,
        builder: (contect, _) {
          return SlideTransition(
            position: splashAnimation,
            child: Image.asset("assets/icons/Lit_Libraryy.png",height: 90,width: 170,),
          );
        });
  }
}
