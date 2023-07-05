import 'package:get/get_navigation/src/root/internacionalization.dart';

class LanguageTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Home': 'Home',
          'No internet': 'No internet',
          'Retry': 'Retry'
        },
        'ur_PK': {
          'Home': 'ھوم',
          'No internet': 'انٹرنیٹ موجود نہیں',
          'Retry': 'دوبارہ کوشش کریں'
        },
        'Ar': {
          'Home': 'ھوم',
          'No internet': 'انٹرنیٹ موجود نہیں',
          'Retry': 'دوبارہ کوشش کریں'
        }
      };
}
