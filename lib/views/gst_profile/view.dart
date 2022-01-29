// Created by Adipt on 27/01/2022

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gst_search/constants/colors.dart';
import 'package:gst_search/data/GstProfile.dart';
import 'package:gst_search/views/SharedWidgets/button.dart';
import 'package:gst_search/views/SharedWidgets/curved_container.dart';

part 'widgets/profile_header.dart';

part 'widgets/active_indicator.dart';

part 'widgets/address_info.dart';

part 'widgets/white_card.dart';

part 'widgets/tax_details.dart';

part 'widgets/white_card_data.dart';

part 'widgets/date_block.dart';

part 'controller.dart';

class GstProfileView extends ConsumerWidget {
  final GstProfile profile;
  final String gstNumber;

  const GstProfileView({
    Key? key,
    required this.profile,
    required this.gstNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(_stateProvider);
    final stateController = ref.watch(_stateProvider.notifier);

    return SafeArea(
      child: Scaffold(
        backgroundColor: QColors.backGroundColor,
        bottomNavigationBar: QButton(
          title: 'Get Return Filing Status',
          onPressed: () {},
        ),
        body: Column(
          children: [
            CurvedContainer(
              child: ProfileHeader(
                gstNumber: gstNumber,
                status: profile.status,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    AddressBlock(
                      address: profile.address,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TaxDetails(
                      taxPayerType: profile.taxPayerType,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: WhiteCard(
                        child: WhiteCardData(
                          title: 'Condition of Business',
                          subTitle: profile.businessType,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    DateBlock(
                      date: profile.dateOfRegistration,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
