import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _introductionanimation,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  // 'assets/introduction_animation/introduction_image.png',
                  'assets/images/health2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "LifeSpark",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 64, right: 64),
              child: Text(
                "Welcome to LifeSpark, your Personal Health Monitor app",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,  // Change this to your desired color
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 16),
              child: InkWell(
                onTap: () {
                  widget.animationController.animateTo(0.2);
                },
                child: Container(
                  height: 58,
                  padding: EdgeInsets.only(
                    left: 56.0,
                    right: 56.0,
                    top: 16,
                    bottom: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0),
                    color: Color(0xFF00B6F0),
                  ),
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF213333),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
