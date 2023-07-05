import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/modules/assignment_screen/assignment_screen_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';

class AssignmentScreen extends GetView<AssignmentScreenController> {
  AssignmentScreen({super.key});

  final _assignmentController = Get.put(AssignmentScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: Text(
          'Assignments',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AppColors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
        ),
        child: ListView.builder(
          itemCount: dummyAssignmentsList.length,
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> singleAssignment = dummyAssignmentsList[index];
            return Card(
              key: ValueKey(singleAssignment['id']),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FilledButton.tonal(
                      onPressed: () {},
                      child: Text(
                        singleAssignment['course_title'].toString(),
                      ),
                    ),
                    Text(
                      singleAssignment['assignment_title'].toString(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Assign Date'),
                        Text(
                          DateFormat('yMMMMd')
                              .format(singleAssignment['assign_date']),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('End Date'),
                        Text(
                          DateFormat('yMMMMd')
                              .format(singleAssignment['end_date']),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Status'),
                        Text(
                          singleAssignment['status'].toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: singleAssignment['status'] == 'submitted'
                          ? null
                          : FilledButton(
                              onPressed: () {},
                              child: const Text(
                                'Submit',
                              ),
                            ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
