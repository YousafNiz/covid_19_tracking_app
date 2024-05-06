import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/world_states_models.dart';
import 'app_url.dart';

class StatesServices {

  Future<WorldStatesModels> fectWorldStatesRecords () async {

    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return WorldStatesModels.fromJson(data);
    }else{
      throw Exception('Error');
    }
  }
}