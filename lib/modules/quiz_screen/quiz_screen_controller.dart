import 'package:get/get.dart';

class QuizScreenController extends GetxController {
  List<Map<String, dynamic>> dummyQuizSubjectList = [
    {
      'id': 1,
      'course_title': 'Visual Programming',
      'assignment_title': 'create form in visual studio',
      'assign_date': DateTime.now(),
      'end_date': DateTime.now(),
      'status': 'pending'
    },
    {
      'id': 2,
      'course_title': 'Data Structures',
      'assignment_title': 'Linked List',
      'assign_date': DateTime.now(),
      'end_date': DateTime.now(),
      'status': 'submitted'
    },
    {
      'id': 3,
      'course_title': 'OOP',
      'assignment_title': 'Abstract classes',
      'assign_date': DateTime.now(),
      'end_date': DateTime.now(),
      'status': 'submitted'
    },
    {
      'id': 4,
      'course_title': 'Networking',
      'assignment_title': 'Mesh topology',
      'assign_date': DateTime.now(),
      'end_date': DateTime.now(),
      'status': 'submitted'
    },
  ].obs;
}
