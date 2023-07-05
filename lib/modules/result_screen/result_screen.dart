import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/modules/result_screen/result_screen_controller.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/constants.dart';

class ResultScreen extends GetView<ResultScreenController> {
  ResultScreen({super.key});

  final _resultScreenController = Get.put(ResultScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: Text(
          'Results',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AppColors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        height: 140,
                        width: 140,
                        child: CircularProgressIndicator(
                          value: 1,
                          strokeWidth: 14,
                          // backgroundColor: AppColors.secondary.withOpacity(0.7),
                          color: AppColors.white,
                        ),
                      ),
                      Positioned(
                        child: Text(
                          '${_resultScreenController.totalObtainedMarks.value}\n/\n${_resultScreenController.totalMarks.value}',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    'You are excellent',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                  Text(
                    'Ayesha!!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView.builder(
                itemCount: _resultScreenController.dummyResults.length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> subject =
                      _resultScreenController.dummyResults[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: kDefaultPadding),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          subject['subject'],
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppColors.white),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${subject['obtained_marks']}/${subject['total_marks']}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: AppColors.white),
                            ),
                            Container(
                              width: 100,
                              height: 16,
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14),
                                  bottomRight: Radius.circular(14),
                                ),
                              ),
                              child: LinearProgressIndicator(
                                value: _resultScreenController
                                    .calculatePercentage(subject),
                                backgroundColor: AppColors.secondary,
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              subject['grade'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: AppColors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
