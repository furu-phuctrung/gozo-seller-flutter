import 'dart:convert';
import 'package:gozo_flutter/Widgets/DashboardScreen/Models/BaseModel.dart';
import 'package:http/http.dart';

abstract class BaseRepository<Model extends BaseModel>{
  final String endpoint;

  BaseRepository(this.endpoint);

  Future<List<Model>> findAll() async{
    Response response = await get(endpoint);
    List<Model> models = List<Model>();
    for(Map<String,dynamic> json in jsonDecode(response.body)){
      models.add(parseJson(json));
    }
    return models;
  }

  Model parseJson(Map<String, dynamic> json);
}