import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/app_utils/app_dimensions.dart';
import 'package:pallet_mobile/src/core/helpers/helper_functions.dart';
import 'package:pallet_mobile/src/core/router/router.dart';
import 'package:pallet_mobile/src/features/dashboard/model/bottom_nav_bar_model.dart';
import 'package:pallet_mobile/src/features/dashboard/widgets/bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentTab = 0;

  final List<NavBarModel> barItems = [
    NavBarModel(
      text: "Home",
      icon: 'assets/svg/home.svg',
      selectedicon: 'assets/svg/home.svg',
    ),
    NavBarModel(
      text: "Booking",
      icon: 'assets/svg/booking.svg',
      selectedicon: 'assets/svg/booking.svg',
    ),
    NavBarModel(
      text: "Post",
      icon: 'assets/svg/post.svg',
      selectedicon: 'assets/svg/post.svg',
    ),
    NavBarModel(
      text: "Messages",
      icon: 'assets/svg/message.svg',
      selectedicon: 'assets/svg/message.svg',
    ),
    NavBarModel(
      text: "Profile",
      icon: 'assets/svg/profile.svg',
      selectedicon: 'assets/svg/profile.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRouter(),
        BookingRouter(),
        PostRouter(),
        MessageRouter(),
        ProfileRouter(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimension.medium),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: Helpers.width(context),
                      height: Helpers.height(context),
                      child: Stack(
                        children: <Widget>[
                          child,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            barItems: barItems,
            tabIndex: tabsRouter.activeIndex,
            onBarTap: (val) {
              tabsRouter.setActiveIndex(val);
            },
          ),
        );
      },
    );
  }
}
