import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jar_of_hearts_views/screens/main_screen.dart';

class StartButton extends StatefulWidget {
  final Color color;
  final Color textColor;
  const StartButton({Key? key, required this.color, required this.textColor})
      : super(key: key);

  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  double chgval = 50.0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Get.to(() => const MainScreen());
        },
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 50,
          width: Get.width * 0.90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * 0.9 / 2 - 50,
              ),
              Text(
                'Start',
                style: TextStyle(
                  fontSize: 20,
                  color: widget.textColor,
                ),
              ),
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 20, end: chgval),
                duration: const Duration(milliseconds: 1000),
                onEnd: () => setState(
                  () {
                    chgval = chgval == 20.0 ? 50.0 : 20.0;
                  },
                ),
                builder: (BuildContext context, double size, Widget? child) {
                  return SizedBox(
                    width: size,
                  );
                },
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: widget.textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
