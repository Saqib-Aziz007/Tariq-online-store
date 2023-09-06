import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/app_colors.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/modules/home_screen/home_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  // final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
                kDefaultPadding, 56, kDefaultPadding, 0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.viewProfileScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hi',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                      color: AppColors.white,
                                    ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Ayesha',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'CS | 2017-uam-628',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.white,
                                ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            height: 24,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                  backgroundColor: AppColors.white),
                              child: const Text(
                                '2017 - 2021',
                                style: TextStyle(color: AppColors.primary),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=100'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoBox(
                      title: 'Attendance',
                      subTitle: '90.02%',
                      onTap: () {},
                    ),
                    InfoBox(
                      title: 'Fees Due',
                      subTitle: "600\$",
                      onTap: () {
                        Get.toNamed(AppRoutes.feeScreen);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
              ),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: [
                  IconBoxButtonWidget(
                    icon: CupertinoIcons.stopwatch,
                    title: 'Take Quiz',
                    onTap: () {
                      Get.toNamed(AppRoutes.quizScreen);
                    },
                  ),
                  IconBoxButtonWidget(
                    icon: CupertinoIcons.table,
                    title: 'Assignments',
                    onTap: () {
                      Get.toNamed(AppRoutes.assignmentsScreen);
                    },
                  ),
                  // IconBoxButtonWidget(
                  //   icon: Icons.calendar_month_outlined,
                  //   title: 'Holidays',
                  //   onTap: () {},
                  // ),
                  // IconBoxButtonWidget(
                  //   icon: CupertinoIcons.calendar,
                  //   title: 'Time Table',
                  //   onTap: () {},
                  // ),
                  IconBoxButtonWidget(
                    icon: Icons.assignment_turned_in_outlined,
                    title: 'Result',
                    onTap: () {
                      Get.toNamed(AppRoutes.resultScreen);
                    },
                  ),
                  IconBoxButtonWidget(
                    icon: Icons.checklist_sharp,
                    title: 'DateSheet',
                    onTap: () {
                      Get.toNamed(AppRoutes.dateSheetScreen);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconBoxButtonWidget extends StatelessWidget {
  const IconBoxButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: AppColors.white,
                size: 56,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColors.white),
              )
            ],
          )),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    this.title = 'title',
    this.subTitle = 'subTitle',
    this.onTap,
  });

  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 160,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.5),
              spreadRadius: 0.7,
              blurRadius: 3,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.black.withOpacity(.8),
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
