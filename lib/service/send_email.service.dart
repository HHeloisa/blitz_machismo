import 'package:dio/dio.dart';

class SendEmailService {

 Future<void> sendEmail(String email, List<String> sexistTypes) async {
  Dio dio = Dio();
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts/1';

  int trys = 0;
  try {
    await dio.post(apiUrl, data: sexistTypes);
  } catch (e) {
    if (trys > 5) {
      return;
    } else {
      trys = trys + 1;
    rethrow;
    }
  }
 }
}