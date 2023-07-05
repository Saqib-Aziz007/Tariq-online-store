import 'dart:ui';

final List<Map<String, dynamic>> appLocales = [
  {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
  {'name': 'اردو', 'locale': const Locale('ur')},
];

const double kDefaultPadding = 20.0;

DateTime dateNow = DateTime.now();

List<Map<String, dynamic>> dummyAssignmentsList = [
  {
    'id': 1,
    'course_title': 'Visual Programming',
    'assignment_title': 'create form in visual studio',
    'assign_date': dateNow,
    'end_date': dateNow,
    'status': 'pending'
  },
  {
    'id': 2,
    'course_title': 'Data Structures',
    'assignment_title': 'Linked List',
    'assign_date': dateNow,
    'end_date': dateNow,
    'status': 'submitted'
  },
  {
    'id': 3,
    'course_title': 'OOP',
    'assignment_title': 'Abstract classes',
    'assign_date': dateNow,
    'end_date': dateNow,
    'status': 'submitted'
  },
  {
    'id': 4,
    'course_title': 'Networking',
    'assignment_title': 'Mesh topology',
    'assign_date': dateNow,
    'end_date': dateNow,
    'status': 'submitted'
  },
];

List<Map<String, dynamic>> dummyFeeDetailsList = [
  {
    'id': 1,
    'receipt_id': 182318,
    'fee_amount': 980,
    'fee_month': 'July',
    'payment_date': null,
    'status': 'pending'
  },
  {
    'id': 2,
    'receipt_id': 182317,
    'fee_amount': 980,
    'fee_month': 'June',
    'payment_date': DateTime(dateNow.year, dateNow.month - 1, dateNow.day),
    'status': 'paid'
  },
  {
    'id': 3,
    'receipt_id': 182316,
    'fee_amount': 980,
    'fee_month': 'May',
    'payment_date': DateTime(dateNow.year, dateNow.month - 2, dateNow.day),
    'status': 'paid'
  },
  {
    'id': 3,
    'receipt_id': 182315,
    'fee_amount': 980,
    'fee_month': 'April',
    'payment_date': DateTime(dateNow.year, dateNow.month - 3, dateNow.day),
    'status': 'paid'
  },
];

List<Map<String, dynamic>> dummyDateSheet = [
  {
    'id': 1,
    'exam_date': dateNow,
    'exam_time': dateNow,
    'subject': 'Visual Programming',
  },
  {
    'id': 1,
    'exam_date': dateNow,
    'exam_time': dateNow,
    'subject': 'Networking',
  },
  {
    'id': 1,
    'exam_date': dateNow,
    'exam_time': dateNow,
    'subject': 'OOP',
  },
  {
    'id': 1,
    'exam_date': dateNow,
    'exam_time': dateNow,
    'subject': 'Data Structures',
  },
];
