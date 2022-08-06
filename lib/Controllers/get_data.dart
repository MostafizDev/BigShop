import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:shop/Models/HomepageModel.dart';

class GetData extends ChangeNotifier {
  HomepageModel? homepageModel;

  Future getInfo() async {
    homepageModel = null;

    final response =
        await http.get(Uri.parse('https://api.websolutionus.com/bigshop/api/'));

    var data = json.decode(response.body);

    print(data.toString());

    homepageModel = HomepageModel.fromJson(data);

    notifyListeners();
  }
}
