// Created by Adipt on 27/01/2022

part of '../view.dart';

class AddressBlock extends StatelessWidget {
  final String address;

  const AddressBlock({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return WhiteCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: QColors.backGroundColor,
                child: Icon(
                  Icons.location_on_rounded,
                  color: QColors.green,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Principal Place of Business',
                style: TextStyle(
                  color: QColors.heading,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 40.0,
                height: 80.0,
                child: VerticalDivider(
                  color: QColors.backGroundColor,
                  thickness: 2.0,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                width: size.width * 0.6,
                child: Text(
                  address,
                  maxLines: 4,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: const [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: QColors.backGroundColor,
                child: Icon(
                  Icons.warehouse_outlined,
                  color: QColors.green,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Additional Place of Business',
                style: TextStyle(
                  color: QColors.heading,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 7.0,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 50.0,
            ),
            child: Text(
              'Floor',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
