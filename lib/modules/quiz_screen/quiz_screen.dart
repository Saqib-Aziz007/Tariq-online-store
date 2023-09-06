import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/modules/quiz_screen/quiz_screen_controller.dart';
import 'package:flutter_getx_mvvm_template/widgets/custom_design_scaffold.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class QuizScreen extends GetView<QuizScreenController> {
  QuizScreen({super.key});

  final _quizScreenController = Get.put(QuizScreenController());

  @override
  Widget build(BuildContext context) {
    return CustomDesignScaffold(
      appBarTitle: 'Quiz',
      body: ListView.builder(
        itemCount: _quizScreenController.dummyQuizSubjectList.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> singleQuiz =
              _quizScreenController.dummyQuizSubjectList[index];
          return Card(
            key: ValueKey(singleQuiz['id']),
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
                      singleQuiz['course_title'].toString(),
                    ),
                  ),
                  // Text(
                  //   singleQuiz['assignment_title'].toString(),
                  //   style: Theme.of(context).textTheme.titleLarge,
                  // ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Assign Date'),
                      Text(
                        DateFormat('yMMMMd').format(singleQuiz['assign_date']),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('End Date'),
                      Text(
                        DateFormat('yMMMMd').format(singleQuiz['end_date']),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Status'),
                      Text(
                        singleQuiz['status'].toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: singleQuiz['status'] == 'submitted'
                        ? null
                        : FilledButton(
                            onPressed: () {},
                            child: const Text(
                              'Take',
                            ),
                          ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
