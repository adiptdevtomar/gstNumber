// Created by Adipt on 27/01/2022

part of '../view.dart';

class TaxDetails extends StatelessWidget {
  final String taxPayerType;

  const TaxDetails({
    Key? key,
    required this.taxPayerType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: WhiteCard(
            child: WhiteCardData(
              title: 'State Jurisdiction',
              subTitle: 'Ward 74',
            ),
          ),
        ),
        const SizedBox(
          width: 13.0,
        ),
        const Expanded(
          child: WhiteCard(
            child: WhiteCardData(
              title: 'Center Jurisdiction',
              subTitle: 'RANGE-139',
            ),
          ),
        ),
        const SizedBox(
          width: 13.0,
        ),
        Expanded(
          child: WhiteCard(
            child: WhiteCardData(
              title: 'Taxpayer Type',
              subTitle: taxPayerType,
            ),
          ),
        ),
      ],
    );
  }
}
