import 'package:flutter/material.dart';

class AnimatedCircularIndicator extends StatefulWidget {
  @override
  _AnimatedCircularIndicatorState createState() =>
      _AnimatedCircularIndicatorState();
}
class _AnimatedCircularIndicatorState extends State<AnimatedCircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Set the duration of the animation
    );

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);

    // Start the animation
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        value: _animation.value, // Set the animation value to the CircularProgressIndicator
        strokeWidth: 5.0, // Set the width of the circular indicator
      ),
    );
  }
}

