// Created by Adipt on 27/01/2022

part of '../view.dart';

class WhiteCardData extends StatelessWidget {
  final String title;
  final String subTitle;

  const WhiteCardData({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: Text(
              title,
              style: const TextStyle(
                color: QColors.heading,
              ),
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
