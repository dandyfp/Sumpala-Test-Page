import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sumpalatestpage/models/data_model.dart';

class PromoController extends GetxController {
  Future<List<DataModel>> getPromo() async {
    Uri urL = Uri.parse(
        'https://apidev.app-macbrame.com/api/promos?perPage=25&page=1');
    var result = await http.get(urL);
    List data = (jsonDecode(result.body) as Map<String, dynamic>)["data"];
    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => DataModel.fromJson(e)).toList();
    }
  }
}
