import 'package:get/get.dart';

class ResultScreenController extends GetxController {
  RxInt totalMarks = 0.obs;
  RxInt totalObtainedMarks = 0.obs;
  final List<Map<String, dynamic>> dummyResults = [
    {
      'id': 1,
      'total_marks': 100,
      'obtained_marks': 70,
      'grade': 'B',
      'subject': 'Visual Programming',
    },
    {
      'id': 1,
      'total_marks': 100,
      'obtained_marks': 60,
      'grade': 'B',
      'subject': 'Networking',
    },
    {
      'id': 1,
      'total_marks': 100,
      'obtained_marks': 50,
      'grade': 'C',
      'subject': 'OOP',
    },
    {
      'id': 1,
      'total_marks': 100,
      'obtained_marks': 85,
      'grade': 'A',
      'subject': 'Data Structures',
    },
  ].obs;

  @override
  void onInit() {
    calculateTotalMarks();
    super.onInit();
  }

  calculateTotalMarks() {
    dynamic totalSubjectMarks = 0;
    dynamic obtainedMarks = 0;
    for (var element in dummyResults) {
      totalSubjectMarks = totalSubjectMarks + element['total_marks'];
      obtainedMarks = obtainedMarks + element['obtained_marks'];
    }
    totalMarks.value = totalSubjectMarks;
    totalObtainedMarks.value = obtainedMarks;
  }

  double calculatePercentage(Map<String, dynamic> subject) {
    return subject['obtained_marks'] / subject['total_marks'];
  }
}
