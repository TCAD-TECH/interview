import 'dart:convert';

import 'package:mobile/models/employee.dart';
import 'dart:async';

import 'package:http/http.dart' as http;

Future<List<EmployeeModel>> getList() async {
  Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  };

  var url = "https://testapiin.free.beeceptor.com/list";
  var response = await http.get(Uri.parse(url), headers: headers);

  List<dynamic> body = jsonDecode(response.body)["data"];
  print("$body");
  List<EmployeeModel> empList =
      body.map((dynamic item) => EmployeeModel.fromJson(item)).toList();

  print("length of adminBanner: ${empList.length}");
  return empList;
}
