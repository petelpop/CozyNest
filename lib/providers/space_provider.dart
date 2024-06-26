import 'dart:convert';

import 'package:cozy/models/Space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  
  Future<List<Space>>? getrecommendedSpace() async {
    var result = await http.get(Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces'));

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return<Space> [];
    }
  }
}