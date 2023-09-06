import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/app_colors.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/modules/date_sheet_screen/datesheet_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/widgets/custom_design_scaffold.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateSheetScreen extends GetView<DateSheetScreenController> {
  const DateSheetScreen({super.key});

  // final _dateSheetController = Get.put(DateSheetScreenController());

  @override
  Widget build(BuildContext context) {
    return CustomDesignScaffold(
      appBarTitle: 'DateSheet',
      body: ListView(
        children: dummyDateSheet
            .map(
              (singleSubject) => DateSheetTile(
                subject: singleSubject['subject'],
                examDate: singleSubject['exam_date'],
                examTime: singleSubject['exam_time'],
              ),
            )
            .toList(),
      ),
    );
  }
}

class DateSheetTile extends StatelessWidget {
  const DateSheetTile({
    super.key,
    required this.subject,
    required this.examDate,
    required this.examTime,
  });

  final DateTime examDate;
  final String subject;
  final DateTime examTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        children: [
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    DateFormat('d').format(examDate),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    DateFormat('MMM').format(examDate).toUpperCase(),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    subject,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    DateFormat('EEEE').format(examDate),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 18,
                    color: AppColors.secondary,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(DateFormat('hh:mm a').format(examTime))
                ],
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
