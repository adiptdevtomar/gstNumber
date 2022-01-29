// Created by Adipt on 27/01/2022

part of '../view.dart';

class WhiteCard extends StatelessWidget {
  final Widget child;

  const WhiteCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: child,
    );
  }
}
