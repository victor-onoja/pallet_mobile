import 'package:flutter/material.dart';
import 'package:pallet_mobile/src/core/app_utils/app_dimensions.dart';
import 'package:pallet_mobile/src/core/app_utils/styles/app_colors.dart';
import 'package:pallet_mobile/src/general_widgets/spacing.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool moreBusinessDetails = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.graylight3,
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: AppColors.graylight3),
                // first content column
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.primarymain,
                            width: 2.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/png/dp.png'),
                          radius: 43,
                        ),
                      ),
                    ),
                    Spacing.tinyHeight(),
                    Center(
                      child: Text(
                        'Grace Murphy',
                        style: TextStyle(
                            color: AppColors.primarymain,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                    ),
                    Spacing.tinyHeight(),
                    Center(
                      child: Text(
                        'Studio 199 Photography',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Spacing.tinyHeight(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rating',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Spacing.smallWidth(),
                        Text(
                          '4.9',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Spacing.tinyWidth(),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_rate,
                              size: 10,
                            ),
                            Icon(
                              Icons.star_rate,
                              size: 10,
                            ),
                            Icon(
                              Icons.star_rate,
                              size: 10,
                            ),
                            Icon(
                              Icons.star_rate,
                              size: 10,
                            ),
                            Icon(
                              Icons.star_half,
                              size: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacing.smallHeight(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimension.medium),
                      child: Text(
                        'A talented photographer with a passion for capturing stunning images in the studio. With 10+ years of experience, he brings exceptional attention to detail and a keen eye for composition to every shoot at Studio 199.',
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacing.tinyHeight(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More Business details',
                          style: TextStyle(
                              color: AppColors.primarymain,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 10,
                        ),
                      ],
                    ),
                    Spacing.tinyHeight(),
                  ],
                ),
              ),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
        Positioned(
          top: 180,
          child: Visibility(
            visible: moreBusinessDetails,
            // more biz detail column
            child: Container(
              decoration: const BoxDecoration(color: AppColors.graylight3),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimension.medium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacing.mediumHeight(),
                    Text(
                      'Business Category',
                      style: TextStyle(
                          color: AppColors.primarymain,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      'Photography',
                      style: TextStyle(
                          color: AppColors.graylight12,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    Spacing.mediumHeight(),
                    Text(
                      'Experience',
                      style: TextStyle(
                          color: AppColors.primarymain,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      '2 yrs 4mns',
                      style: TextStyle(
                          color: AppColors.graylight12,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    Spacing.mediumHeight(),
                    Text(
                      'Phone Nos',
                      style: TextStyle(
                          color: AppColors.primarymain,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      '08011000011',
                      style: TextStyle(
                          color: AppColors.graylight12,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      '08011000011',
                      style: TextStyle(
                          color: AppColors.graylight12,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    Spacing.mediumHeight(),
                    Text(
                      'Email Address',
                      style: TextStyle(
                          color: AppColors.primarymain,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Spacing.tinyHeight(),
                    Text(
                      'Studio199@email.com',
                      style: TextStyle(
                          color: AppColors.graylight12,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    Spacing.mediumHeight(),
                    Text(
                      'Rating and Review',
                      style: TextStyle(
                          color: AppColors.primarymain,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Rating',
                              style: TextStyle(
                                  color: AppColors.graylight12,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp),
                            ),
                            Spacing.mediumWidth(),
                            Text(
                              '4.9',
                              style: TextStyle(
                                  color: AppColors.graylight12,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp),
                            ),
                            Spacing.tinyWidth(),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star_rate,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star_rate,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star_rate,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star_rate,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star_half,
                                  size: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 24.w),
                        Row(
                          children: [
                            Text('View Reviews',
                                style: TextStyle(
                                    color: AppColors.graylight12,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp)),
                            const Icon(Icons.arrow_forward)
                          ],
                        )
                      ],
                    ),
                    Spacing.mediumHeight(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 138),
                      child: Row(
                        children: [
                          Text(
                            'Less Business details',
                            style: TextStyle(
                                color: AppColors.primarymain,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_up,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                    Spacing.smallHeight()
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
