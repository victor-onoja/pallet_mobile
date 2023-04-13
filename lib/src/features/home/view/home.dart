import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/app_utils/app_utils.dart';
import 'package:pallet_mobile/src/features/home/model/home_models.dart';
import 'package:pallet_mobile/src/general_widgets/general_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final searchController = TextEditingController();
  FocusNode searchfocus = FocusNode();
//username needs to be dynamic
  final String userName = 'Grace';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimension.medium, vertical: AppDimension.big),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello $userName,',
                      style: TextStyle(
                          color: AppColors.graylight12,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp),
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      'Welcome back to Palette',
                      style: Theme.of(context).textTheme.displayMedium,
                    )
                  ],
                ),
                const Icon(
                  Icons.notifications_none,
                  color: AppColors.primarymain,
                  size: 25,
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimension.medium),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  focusNode: searchfocus,
                  cursorColor: AppColors.graylight12,
                  style: Theme.of(context).textTheme.bodyMedium,
                  controller: searchController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide:
                              const BorderSide(color: AppColors.primarymain)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide:
                              const BorderSide(color: AppColors.primarymain)),
                      hintText: 'Search for a service you need',
                      hintStyle: Theme.of(context).textTheme.labelMedium),
                )),
                Spacing.mediumWidth(),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.primarymain,
                    size: 25,
                  ),
                  onPressed: () {
                    String search = searchController.text;
                    // print('search: $search');
                    searchController.clear();
                    searchfocus.unfocus();
                  },
                )
              ],
            ),
          ),
          Spacing.mediumHeight(),
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimension.medium,
            ),
            child: Text(
              'Categories',
              style: TextStyle(
                  color: AppColors.primarymain,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 12.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (var category in categories)
                    SizedBox(
                        width: 35.w,
                        child: Card(
                            elevation: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Stack(children: [
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Image.asset(
                                    category.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 2.h,
                                      decoration: const BoxDecoration(
                                          color: AppColors.primarymain,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(4))),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0, vertical: 2),
                                          child: Text(
                                            category.title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                          ),
                                        ),
                                      ),
                                    ))
                              ]),
                            ))),
                ],
              ),
            ),
          ),
          Spacing.mediumHeight(),
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimension.medium,
            ),
            child: Text(
              'Trending Services',
              style: TextStyle(
                  color: AppColors.primarymain,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 12.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (var trendingService in trendingServices)
                    SizedBox(
                        width: 35.w,
                        child: Card(
                            elevation: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Stack(children: [
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Image.asset(
                                    trendingService.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 2.h,
                                      width: 35.w,
                                      decoration: const BoxDecoration(
                                          color: AppColors.primarymain,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(4),
                                              bottomLeft: Radius.circular(4))),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 2),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              trendingService.title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall,
                                            ),
                                            Text(
                                              trendingService.price,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                              ]),
                            ))),
                ],
              ),
            ),
          ),
          Spacing.bigHeight(),
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimension.medium,
            ),
            child: Text(
              'Services close to you',
              style: TextStyle(
                  color: AppColors.primarymain,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            ),
          ),
          Spacing.smallHeight(),
          Column(
            children: <Widget>[
              for (var serviceCloseToYou in servicesCloseToYou)
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(color: AppColors.graylight9),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimension.medium,
                        vertical: AppDimension.small),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              serviceCloseToYou.image,
                            )),
                        Spacing.mediumWidth(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              serviceCloseToYou.title,
                              style: TextStyle(
                                  color: AppColors.graylight12,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp),
                            ),
                            Spacing.tinyHeight(),
                            Row(
                              children: <Widget>[
                                Text(
                                  serviceCloseToYou.company,
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                Spacing.smallWidth(),
                                const Icon(
                                  Icons.star_border,
                                  color: AppColors.graylight12,
                                  size: 12,
                                ),
                                Spacing.tinyWidth(),
                                Text(
                                  serviceCloseToYou.rating,
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                )
                              ],
                            ),
                            Spacing.tinyHeight(),
                            Text(
                              serviceCloseToYou.location,
                              style: TextStyle(
                                  color: AppColors.graylight12,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp),
                            ),
                            Spacing.smallHeight(),
                            serviceCloseToYou.negotiable
                                ? Row(
                                    children: [
                                      Text(
                                        serviceCloseToYou.price,
                                        style: TextStyle(
                                            color: AppColors.primarymain,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp),
                                      ),
                                      Spacing.mediumWidth(),
                                      Text(
                                        'Negotiable',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      )
                                    ],
                                  )
                                : Text(
                                    serviceCloseToYou.price,
                                    style: TextStyle(
                                        color: AppColors.primarymain,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                            Spacing.smallHeight(),
                            Row(
                              children: [
                                AppButton(
                                  height: 4.5.h,
                                  width: 28.w,
                                  text: 'View Details',
                                  style: TextStyle(
                                      color: AppColors.scaffoldBackground,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp),
                                ),
                                Spacing.bigWidth(),
                                const Icon(
                                  Icons.favorite_border,
                                  color: AppColors.graylight9,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      )),
    );
  }
}
