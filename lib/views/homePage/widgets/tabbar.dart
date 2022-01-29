// Created by Adipt on 28/01/2022

part of '../view.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({Key? key}) : super(key: key);

  @override
  _ProfileTabBarState createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: QColors.darkGreen,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          color: Colors.white,
        ),
        unselectedLabelColor: Colors.white,
        labelColor: QColors.green,
        tabs: [
          Tab(
            text: 'Search GST Number',
          ),
          Tab(
            text: 'GST Return Status',
          )
        ],
      ),
    );
  }
}
