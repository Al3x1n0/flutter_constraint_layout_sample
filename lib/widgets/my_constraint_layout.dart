import 'package:flutter/material.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';

class MyConstraintLayout extends StatelessWidget {
  MyConstraintLayout({super.key});

  final ConstraintId box1 = ConstraintId('box1');
  final ConstraintId box2 = ConstraintId('box2');
  final ConstraintId box3 = ConstraintId('box3');

  @override
  Widget build(BuildContext context) {
    return ConstraintLayout(
      childConstraints: [
        Constraint(
          id: box1,
          size: 200,
          top: parent.top,
          left: parent.left,
        ),
        Constraint(
            id: box2,
            size: 200,
            top: box1.bottom,
            left: parent.left,
            right: parent.right),
        Constraint(
          id: box3,
          size: 200,
          top: box2.bottom,
          right: parent.right,
        ),
      ],
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          color: Colors.redAccent,
          alignment: Alignment.center,
          child: const Text('box1'),
        ).applyConstraintId(
          id: box1,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          color: Colors.greenAccent,
          alignment: Alignment.center,
          child: const Text('box2'),
        ).applyConstraintId(
          id: box2,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          color: Colors.blueAccent,
          alignment: Alignment.center,
          child: const Text('box3'),
        ).applyConstraintId(
          id: box3,
        ),
      ],
    );
  }
}
