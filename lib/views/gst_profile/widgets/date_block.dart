// Created by Adipt on 28/01/2022

part of '../view.dart';

class DateBlock extends StatelessWidget {
  final String date;

  const DateBlock({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteCard(
      child: SizedBox(
        height: 50.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FittedBox(
                  child: Text(
                    'Date of Registration',
                    style: TextStyle(
                      color: QColors.heading,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    'Date of Cancelation',
                    style: TextStyle(
                      color: QColors.heading,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  '--',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
