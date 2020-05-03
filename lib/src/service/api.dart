import 'package:com/src/models/cases_brazil.dart';
import 'package:com/src/models/cases_world.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

  final baseUrlBazil = 'https://xx9p7hp1p7.execute-api.us-east-1.amazonaws.com';
  final baseUrlWorld = 'http://coronavirusdata.herokuapp.com/';

   Map<String, String> headerParams = {
    'content-Type': 'application/json; charset=utf-8',
    'origin': 'https://covid.saude.gov.br',
    'x-parse-application-id': 'unAFkcaNDeXajurGB7LChj8SgQYS2ptm',
  };

  Future<Map> getDataBrazil({ String endpoint }) async {
    final http.Response response = await http.get('$baseUrlBazil/prod/$endpoint',
    headers: headerParams);

    if(response.statusCode == 200) {
      String bodyResponse = utf8.decode(response.bodyBytes);
      return json.decode(bodyResponse);
    } else {
      throw Exception('Failed to load Cases Per Day');
    }
  }

  Future<CasesWorld> getCasesWorld() async {
    final http.Response response = await http.get('$baseUrlWorld');

    if (response.statusCode == 200) {
      return CasesWorld.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Cases in World');
    }
  }

  Future<CasesBrazil> getCasesBrazil() async {
    final http.Response response = await http.get('$baseUrlWorld');

    if (response.statusCode == 200) {
      return CasesBrazil.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Cases in Brazil');
    }
  }
