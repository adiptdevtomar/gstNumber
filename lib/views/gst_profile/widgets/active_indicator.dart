// Created by Adipt on 27/01/2022

part of '../view.dart';

class ActiveIndicator extends StatelessWidget {
  final String status;

  const ActiveIndicator({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 13.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            backgroundColor: QColors.green,
            radius: 3.0,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            status.toUpperCase(),
            style: const TextStyle(
              color: QColors.green,
            ),
          )
        ],
      ),
    );
  }
}
