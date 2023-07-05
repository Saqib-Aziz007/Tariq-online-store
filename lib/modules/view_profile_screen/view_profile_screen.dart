import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/app_colors.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/modules/view_profile_screen/view_profile_controller.dart';
import 'package:get/get.dart';

class ViewProfileScreen extends GetView<ViewProfileController> {
  ViewProfileScreen({super.key});

  final _viewProfileController = Get.put(ViewProfileController());

  void _logout(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext ctx) {
          return CupertinoAlertDialog(
            title: Text(
              'Please Confirm',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            content: Text(
              'Are you sure to logout?',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  _viewProfileController.logout();
                },
                isDefaultAction: true,
                isDestructiveAction: true,
                child: const Text('Yes'),
              ),
              // The "No" button
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                isDefaultAction: false,
                isDestructiveAction: false,
                child: const Text('No'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: Text(
          'My Profile',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.white,
              ),
        ),
        actions: [
          GestureDetector(
            onTap: () => _logout(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.logout,
                  color: AppColors.white,
                  size: 28,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Logout',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.white,
                      ),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.all(kDefaultPadding),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=100',
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'CS | 2017-uam-628',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.white,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(kDefaultPadding),
              children: const [
                ReadOnlyInputWidget(
                  label: 'Registration Number',
                  value: '2017-uam-628',
                ),
                ReadOnlyInputWidget(
                  label: 'Academic Year',
                  value: '2017-2021',
                ),
                ReadOnlyInputWidget(
                  label: 'Department',
                  value: 'Computer Science',
                ),
                ReadOnlyInputWidget(
                  label: 'Date Of Birth',
                  value: '19-FEB-1999',
                ),
                ReadOnlyInputWidget(
                  label: 'Email',
                  value: 'example@gmail.com',
                ),
                ReadOnlyInputWidget(
                  label: 'Phone Number',
                  value: '+923456789',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReadOnlyInputWidget extends StatelessWidget {
  const ReadOnlyInputWidget({
    super.key,
    this.label,
    this.value,
  });

  final String? label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: const Icon(Icons.lock),
        hintText: value,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
