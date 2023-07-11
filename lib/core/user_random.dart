import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_account_app/modal/modal_information.dart';

Future<ModalInformation> userRandom() async {
  Uri url = Uri.parse('https://randomuser.me/api/');

  http.Response response = await http.get(url, headers: {
    'Content-Type': 'aplication/json',
  });

  Map data = jsonDecode(response.body);

  return ModalInformation.fromJson(data);
}
