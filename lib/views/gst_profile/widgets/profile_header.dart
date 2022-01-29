// Created by Adipt on 27/01/2022

part of '../view.dart';

class ProfileHeader extends StatelessWidget {
  final String gstNumber;
  final String status;

  const ProfileHeader({
    Key? key,
    required this.gstNumber,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: size.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 7.0,
              ),
              const Text(
                'GST Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 22.0,
          ),
          const Text(
            'GSTIN of the Tax Payer',
            style: TextStyle(
              color: QColors.lightGreen,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            gstNumber,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'Masters India Private Limited',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          ActiveIndicator(
            status: status,
          ),
        ],
      ),
    );
  }
}
